-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- 'olimorris/codecompanion.nvim',
  'vim-test/vim-test',
  'tpope/vim-fugitive',
  'tpope/vim-projectionist',
  'tpope/vim-surround',
  'numToStr/FTerm.nvim',
  'vimwiki/vimwiki',
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      contexts = {
        vectorspace = {
          description = 'Semantic search through workspace using vector embeddings. Find relevant code with natural language queries. Supports input (query)',
          input = function(callback)
            vim.ui.input({
              prompt = 'Enter search query> ',
            }, callback)
          end,
          resolve = function(input, source, prompt)
            if not input or input == '' then
              input = prompt
            end
            local embeddings = require('CopilotChat.utils').curl_post('http://localhost:8888/query', {
              json_request = true,
              json_response = true,
              body = {
                dir = source.cwd(),
                text = input,
                max = 50,
              },
            }).body

            require('CopilotChat.utils').schedule_main()
            return vim
              .iter(embeddings)
              :map(function(embedding)
                embedding.filetype = require('CopilotChat.utils').filetype(embedding.filename)
                return embedding
              end)
              :filter(function(embedding)
                return embedding.filetype
              end)
              :totable()
          end,
        },
      },
    },

    -- See Commands section for default commands if you want to lazy load on them
  },
}

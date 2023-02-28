return {
  { "kkoomen/vim-doge", build = { "npm i --no-save && npm run build:binary:unix", ":call doge#install()" } },
}

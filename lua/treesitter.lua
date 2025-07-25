require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c_sharp", "javascript", "typescript", "tsx", "html", "css" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = { enable = true },
}


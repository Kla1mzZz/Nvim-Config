require'nvim-treesitter.configs'.setup {

  ensure_installed = {"python", "lua", "rust", "javascript"},

  
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}

lspconfig.rust_analyzer.setup{}

lspconfig.lua_ls.setup{
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'}
      }
    }
  }
}

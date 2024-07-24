local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.ruff,  -- Используйте autopep8 для форматирования
        null_ls.builtins.diagnostics.ruff,     -- Используйте ruff для линтинга
    },
})


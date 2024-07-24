vim.g.mapleader = ' '


-- init.lua
vim.diagnostic.config({
    virtual_text = true, -- Отображение виртуальных текстов с ошибками
    signs = true,        -- Отображение значков для ошибок
    update_in_insert = true, -- Обновление ошибок во время вставки текста
    severity_sort = true, -- Сортировка ошибок по степени серьезности
    float = {
        border = "rounded", -- Округлые границы для всплывающих окон
        source = "always",  -- Показывать источник ошибки
    },
})

vim.cmd('autocmd VimEnter * Obsession')

--NeoTree
vim.api.nvim_set_keymap('n', '<Space>e', ':Neotree toggle<CR>', { noremap = true, silent = true })

--Visual Mode
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>t', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>td', ':tabclose<CR>', { noremap = true, silent = true })

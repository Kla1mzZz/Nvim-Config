vim.g.mapleader = ' '


vim.cmd('autocmd VimEnter * Obsession')

--NeoTree
vim.api.nvim_set_keymap('n', '<Space>e', ':Neotree toggle<CR>', { noremap = true, silent = true })

--Visual Mode
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>t', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>td', ':tabclose<CR>', { noremap = true, silent = true })

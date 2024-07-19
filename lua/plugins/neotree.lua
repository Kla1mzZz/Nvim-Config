vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1]])

vim.fn.sign_define("DiagnosticSignError",{text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",{text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",{text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",{text = "󰌵", texthl = "DiagnosticSignHint"})


require("neo-tree").setup({
        close_if_last_window = true, -- Закрыть Neo-tree, если это последнее окно
        popup_border_style = "rounded", -- Скругленные углы для всплывающих окон
        enable_git_status = true, -- Включить отображение статуса Git
        enable_diagnostics = true, -- Включить отображение диагностик
        
        window = {
            width = 30,  -- Ширина окна
            padding = {
              left = 2,   -- Левый отступ
              right = 2,  -- Правый отступ
              top = 0,    -- Верхний отступ
              bottom = 0, -- Нижний отступ
            },
          },

        default_component_configs = {
          indent = {
            indent_size = 2,
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
          },
          icon = {
            folder_closed = "󰉋",
            folder_open = "󰝰",
            folder_empty = "󰉖",
            default = "*",
            highlight = "NeoTreeFileIcon",
          }, 

          modified = {
            symbol = "",
            highlight = "NeoTreeModified",
          },
          name = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
          },
          git_status = {
            symbols = {
              -- измененные файлы
              added = "✚",
              modified = "",
              deleted = "✖",
              renamed = "",
              untracked = "★",
              ignored = "◌",
              unstaged = "✗",
              staged = "✓",
              conflict = "",
            }
          },
      }, 

})


vim.api.nvim_set_hl(0, 'NeoTreeIndentMarker', { fg = '#a7b305' })
vim.api.nvim_set_hl(0, 'NeoTreeFileIcon', { fg = '#0dc7d1' })       
vim.api.nvim_set_hl(0, 'NeoTreeFileName', { fg = '#c7cbd1' })      
vim.api.nvim_set_hl(0, 'NeoTreeModified', { fg = '#0dd1c4' })

-- Distopia Theme for Neovim
-- Inspired by dystopian metropolis aesthetics and neon-lit urban landscapes

return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = function()
                -- Distopia color palette
                local colors = {
                    -- Base colors (dark cyberpunk theme)
                    hex_222226 = '#222226', -- Deep charcoal gray
                    hex_3a404a = '#3a404a', -- Muted slate blue
                    hex_4a444b = '#4a444b', -- Dark taupe
                    hex_8a6662 = '#8a6662', -- Dusky rose
                    hex_b37a5c = '#b37a5c', -- Hazy sunset orange

                    -- Neon accent colors
                    hex_00ffff = '#00ffff', -- Electric cyan
                    hex_ff00ff = '#ff00ff', -- Vibrant magenta
                    hex_dc143c = '#dc143c', -- Crimson red
                    hex_f0f046 = '#f0f046', -- Bright lemon yellow
                    hex_4169e1 = '#4169e1', -- Intense electric blue
                    hex_39ff14 = '#39ff14', -- Neon green

                    -- Additional cyberpunk colors
                    hex_1a1a1e = '#1a1a1e', -- Darker charcoal
                    hex_2d2d32 = '#2d2d32', -- Medium charcoal
                    hex_4d4d55 = '#4d4d55', -- Light charcoal
                    hex_66ffff = '#66ffff', -- Light cyan
                    hex_ff66ff = '#ff66ff', -- Light magenta
                    hex_ff6666 = '#ff6666', -- Light red
                }
                ---@diagnostic disable: undefined-global
                -- Reset highlighting
                vim.cmd('highlight clear')
                if vim.fn.exists('syntax_on') then
                    vim.cmd('syntax reset')
                end

                vim.o.termguicolors = true
                vim.o.background = 'dark'
                vim.g.colors_name = 'distopia'

                local hl = vim.api.nvim_set_hl

                -- Editor highlights
                hl(0, 'Normal', { fg = colors.hex_00ffff, bg = colors.hex_222226 })
                hl(0, 'NormalFloat', { fg = colors.hex_00ffff, bg = colors.hex_1a1a1e })
                hl(0, 'FloatBorder', { fg = colors.hex_ff00ff, bg = colors.hex_1a1a1e })
                hl(0, 'FloatTitle', { fg = colors.hex_39ff14, bg = colors.hex_1a1a1e, bold = true })
                hl(0, 'Cursor', { fg = colors.hex_222226, bg = colors.hex_00ffff })
                hl(0, 'CursorLine', { bg = colors.hex_2d2d32 })
                hl(0, 'CursorLineNr', { fg = colors.hex_39ff14, bold = true })
                hl(0, 'LineNr', { fg = colors.hex_8a6662 })
                hl(0, 'Visual', { bg = colors.hex_3a404a })
                hl(0, 'VisualNOS', { bg = colors.hex_3a404a })
                hl(0, 'Search', { fg = colors.hex_222226, bg = colors.hex_f0f046 })
                hl(0, 'IncSearch', { fg = colors.hex_222226, bg = colors.hex_ff00ff })
                hl(0, 'MatchParen', { fg = colors.hex_dc143c, bold = true })

                -- Syntax highlighting
                hl(0, 'Comment', { fg = colors.hex_8a6662, italic = true })
                hl(0, 'Constant', { fg = colors.hex_f0f046 })
                hl(0, 'String', { fg = colors.hex_39ff14 })
                hl(0, 'Character', { fg = colors.hex_39ff14 })
                hl(0, 'Number', { fg = colors.hex_f0f046 })
                hl(0, 'Boolean', { fg = colors.hex_f0f046 })
                hl(0, 'Float', { fg = colors.hex_f0f046 })
                hl(0, 'Identifier', { fg = colors.hex_00ffff })
                hl(0, 'Function', { fg = colors.hex_4169e1 })
                hl(0, 'Statement', { fg = colors.hex_ff00ff })
                hl(0, 'Conditional', { fg = colors.hex_ff00ff })
                hl(0, 'Repeat', { fg = colors.hex_ff00ff })
                hl(0, 'Label', { fg = colors.hex_dc143c })
                hl(0, 'Operator', { fg = colors.hex_66ffff })
                hl(0, 'Keyword', { fg = colors.hex_ff00ff })
                hl(0, 'Exception', { fg = colors.hex_dc143c })
                hl(0, 'PreProc', { fg = colors.hex_ff66ff })
                hl(0, 'Include', { fg = colors.hex_ff66ff })
                hl(0, 'Define', { fg = colors.hex_ff66ff })
                hl(0, 'Macro', { fg = colors.hex_ff66ff })
                hl(0, 'PreCondit', { fg = colors.hex_ff66ff })
                hl(0, 'Type', { fg = colors.hex_dc143c })
                hl(0, 'StorageClass', { fg = colors.hex_dc143c })
                hl(0, 'Structure', { fg = colors.hex_dc143c })
                hl(0, 'Typedef', { fg = colors.hex_dc143c })
                hl(0, 'Special', { fg = colors.hex_39ff14 })
                hl(0, 'SpecialChar', { fg = colors.hex_39ff14 })
                hl(0, 'Tag', { fg = colors.hex_ff00ff })
                hl(0, 'Delimiter', { fg = colors.hex_66ffff })
                hl(0, 'SpecialComment', { fg = colors.hex_8a6662, italic = true, bold = true })
                hl(0, 'Debug', { fg = colors.hex_dc143c })
                hl(0, 'Underlined', { underline = true })
                hl(0, 'Error', { fg = colors.hex_dc143c, bold = true })
                hl(0, 'Todo', { fg = colors.hex_39ff14, bold = true })

                -- UI elements
                hl(0, 'StatusLine', { fg = colors.hex_00ffff, bg = colors.hex_3a404a })
                hl(0, 'StatusLineNC', { fg = colors.hex_8a6662, bg = colors.hex_2d2d32 })
                hl(0, 'TabLine', { fg = colors.hex_8a6662, bg = colors.hex_3a404a })
                hl(0, 'TabLineFill', { bg = colors.hex_2d2d32 })
                hl(0, 'TabLineSel', { fg = colors.hex_ff00ff, bg = colors.hex_222226, bold = true })
                hl(0, 'Pmenu', { fg = colors.hex_00ffff, bg = colors.hex_2d2d32 })
                hl(0, 'PmenuSel', { fg = colors.hex_39ff14, bg = colors.hex_3a404a, bold = true })
                hl(0, 'PmenuSbar', { bg = colors.hex_3a404a })
                hl(0, 'PmenuThumb', { bg = colors.hex_dc143c })
                hl(0, 'WildMenu', { fg = colors.hex_222226, bg = colors.hex_ff00ff })
                hl(0, 'VertSplit', { fg = colors.hex_3a404a })
                hl(0, 'WinSeparator', { fg = colors.hex_3a404a })
                hl(0, 'Folded', { fg = colors.hex_8a6662, bg = colors.hex_2d2d32 })
                hl(0, 'FoldColumn', { fg = colors.hex_ff66ff, bg = colors.hex_222226 })
                hl(0, 'SignColumn', { fg = colors.hex_dc143c, bg = colors.hex_222226 })
                hl(0, 'ColorColumn', { bg = colors.hex_2d2d32 })

                -- Diff highlighting
                hl(0, 'DiffAdd', { fg = colors.hex_39ff14, bg = colors.hex_2d2d32 })
                hl(0, 'DiffChange', { fg = colors.hex_4169e1, bg = colors.hex_2d2d32 })
                hl(0, 'DiffDelete', { fg = colors.hex_dc143c, bg = colors.hex_2d2d32 })
                hl(0, 'DiffText', { fg = colors.hex_66ffff, bg = colors.hex_3a404a, bold = true })

                -- Git signs
                hl(0, 'GitSignsAdd', { fg = colors.hex_39ff14 })
                hl(0, 'GitSignsChange', { fg = colors.hex_4169e1 })
                hl(0, 'GitSignsDelete', { fg = colors.hex_dc143c })

                -- Diagnostic highlights
                hl(0, 'DiagnosticError', { fg = colors.hex_dc143c })
                hl(0, 'DiagnosticWarn', { fg = colors.hex_f0f046 })
                hl(0, 'DiagnosticInfo', { fg = colors.hex_4169e1 })
                hl(0, 'DiagnosticHint', { fg = colors.hex_ff00ff })
                hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.hex_dc143c })
                hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.hex_f0f046 })
                hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.hex_4169e1 })
                hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.hex_ff00ff })

                -- LSP highlights
                hl(0, 'LspReferenceText', { bg = colors.hex_3a404a })
                hl(0, 'LspReferenceRead', { bg = colors.hex_3a404a })
                hl(0, 'LspReferenceWrite', { bg = colors.hex_3a404a, underline = true })

                -- Treesitter highlights
                hl(0, '@variable', { fg = colors.hex_00ffff })
                hl(0, '@variable.builtin', { fg = colors.hex_f0f046 })
                hl(0, '@variable.parameter', { fg = colors.hex_66ffff })
                hl(0, '@variable.member', { fg = colors.hex_4169e1 })
                hl(0, '@constant', { fg = colors.hex_f0f046 })
                hl(0, '@constant.builtin', { fg = colors.hex_f0f046 })
                hl(0, '@constant.macro', { fg = colors.hex_39ff14 })
                hl(0, '@module', { fg = colors.hex_dc143c })
                hl(0, '@module.builtin', { fg = colors.hex_dc143c })
                hl(0, '@label', { fg = colors.hex_dc143c })
                hl(0, '@string', { fg = colors.hex_39ff14 })
                hl(0, '@string.escape', { fg = colors.hex_39ff14 })
                hl(0, '@string.special', { fg = colors.hex_39ff14 })
                hl(0, '@string.regexp', { fg = colors.hex_ff66ff })
                hl(0, '@character', { fg = colors.hex_39ff14 })
                hl(0, '@character.special', { fg = colors.hex_39ff14 })
                hl(0, '@boolean', { fg = colors.hex_f0f046 })
                hl(0, '@number', { fg = colors.hex_f0f046 })
                hl(0, '@number.float', { fg = colors.hex_f0f046 })
                hl(0, '@type', { fg = colors.hex_dc143c })
                hl(0, '@type.builtin', { fg = colors.hex_dc143c })
                hl(0, '@type.definition', { fg = colors.hex_dc143c })
                hl(0, '@attribute', { fg = colors.hex_ff66ff })
                hl(0, '@property', { fg = colors.hex_4169e1 })
                hl(0, '@function', { fg = colors.hex_4169e1 })
                hl(0, '@function.builtin', { fg = colors.hex_4169e1 })
                hl(0, '@function.call', { fg = colors.hex_4169e1 })
                hl(0, '@function.macro', { fg = colors.hex_ff66ff })
                hl(0, '@function.method', { fg = colors.hex_4169e1 })
                hl(0, '@function.method.call', { fg = colors.hex_4169e1 })
                hl(0, '@constructor', { fg = colors.hex_dc143c })
                hl(0, '@operator', { fg = colors.hex_66ffff })
                hl(0, '@keyword', { fg = colors.hex_ff00ff })
                hl(0, '@keyword.coroutine', { fg = colors.hex_ff00ff })
                hl(0, '@keyword.function', { fg = colors.hex_ff00ff })
                hl(0, '@keyword.operator', { fg = colors.hex_ff00ff })
                hl(0, '@keyword.import', { fg = colors.hex_ff66ff })
                hl(0, '@keyword.conditional', { fg = colors.hex_ff00ff })
                hl(0, '@keyword.repeat', { fg = colors.hex_ff00ff })
                hl(0, '@keyword.return', { fg = colors.hex_ff00ff })
                hl(0, '@keyword.exception', { fg = colors.hex_dc143c })
                hl(0, '@comment', { fg = colors.hex_8a6662, italic = true })
                hl(0, '@comment.documentation', { fg = colors.hex_8a6662, italic = true })
                hl(0, '@punctuation', { fg = colors.hex_66ffff })
                hl(0, '@punctuation.bracket', { fg = colors.hex_66ffff })
                hl(0, '@punctuation.delimiter', { fg = colors.hex_66ffff })
                hl(0, '@punctuation.special', { fg = colors.hex_39ff14 })
                hl(0, '@tag', { fg = colors.hex_ff00ff })
                hl(0, '@tag.attribute', { fg = colors.hex_dc143c })
                hl(0, '@tag.delimiter', { fg = colors.hex_66ffff })

                -- Telescope
                hl(0, 'TelescopeBorder', { fg = colors.hex_ff00ff })
                hl(0, 'TelescopePromptBorder', { fg = colors.hex_dc143c })
                hl(0, 'TelescopeResultsBorder', { fg = colors.hex_39ff14 })
                hl(0, 'TelescopePreviewBorder', { fg = colors.hex_f0f046 })
                hl(0, 'TelescopeSelection', { fg = colors.hex_39ff14, bg = colors.hex_3a404a, bold = true })
                hl(0, 'TelescopeMatching', { fg = colors.hex_ff00ff, bold = true })

                -- Neo-tree
                hl(0, 'NeoTreeNormal', { fg = colors.hex_00ffff, bg = colors.hex_222226 })
                hl(0, 'NeoTreeDirectoryName', { fg = colors.hex_dc143c })
                hl(0, 'NeoTreeDirectoryIcon', { fg = colors.hex_39ff14 })
                hl(0, 'NeoTreeFileName', { fg = colors.hex_00ffff })
                hl(0, 'NeoTreeFileIcon', { fg = colors.hex_66ffff })
                hl(0, 'NeoTreeIndentMarker', { fg = colors.hex_3a404a })
                hl(0, 'NeoTreeRootName', { fg = colors.hex_ff00ff, bold = true })
                hl(0, 'NeoTreeGitModified', { fg = colors.hex_4169e1 })
                hl(0, 'NeoTreeGitAdded', { fg = colors.hex_39ff14 })
                hl(0, 'NeoTreeGitDeleted', { fg = colors.hex_dc143c })

                -- Terminal colors (matching dystopian palette)
                vim.g.terminal_color_0 = '#222226'  -- Deep charcoal gray
                vim.g.terminal_color_1 = '#dc143c'  -- Crimson red
                vim.g.terminal_color_2 = '#39ff14'  -- Neon green
                vim.g.terminal_color_3 = '#f0f046'  -- Bright lemon yellow
                vim.g.terminal_color_4 = '#4169e1'  -- Intense electric blue
                vim.g.terminal_color_5 = '#ff00ff'  -- Vibrant magenta
                vim.g.terminal_color_6 = '#00ffff'  -- Electric cyan
                vim.g.terminal_color_7 = '#8a6662'  -- Dusky rose
                vim.g.terminal_color_8 = '#3a404a'  -- Muted slate blue
                vim.g.terminal_color_9 = '#dc143c'  -- Crimson red
                vim.g.terminal_color_10 = '#39ff14' -- Neon green
                vim.g.terminal_color_11 = '#f0f046' -- Bright lemon yellow
                vim.g.terminal_color_12 = '#4169e1' -- Intense electric blue
                vim.g.terminal_color_13 = '#ff00ff' -- Vibrant magenta
                vim.g.terminal_color_14 = '#00ffff' -- Electric cyan
                vim.g.terminal_color_15 = '#b37a5c' -- Hazy sunset orange
            end,
        },
    },
}

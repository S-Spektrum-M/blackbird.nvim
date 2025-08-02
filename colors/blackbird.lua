vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
end

vim.g.colors_name = 'blackbird'

local colors = {
    bg = {
        base = '#0d0d0d',
        alt = '#1a1a1a',
        highlight = '#262626',
        visual = '#333333',
    },
    fg = {
        base = "#fffff0",
        alt = "#c6c6c6",
        dim = "#8d8d8d",
    },
    base = {
        red = "#e55a5a",
        orange = "#d4956b",
        yellow = "#d4af37",
        green = "#5cb370",
        cyan = "#42b8c7",
        blue = "#42a5c7",
        purple = "#a85fb5",
        magenta = "#d85582",
    },
    git = {},
    diagnostic = {},
}

-- Special colors
colors.comment = colors.fg.dim
colors.selection = '#3e4451'
colors.search = '#e5c07b'

-- UI colors
colors.ui.border = '#393939'
colors.ui.menu_bg = '#262626'
colors.ui.menu_sel = '#393939'

-- Git Colors
colors.git.add = colors.base.green
colors.git.change = colors.base.yellow
colors.git.delete = colors.base.red

-- Diagnostic colors
colors.diagnostic.error = colors.base.red
colors.diagnostic.warning = colors.base.yellow
colors.diagnostic.info = colors.base.cyan
colors.diagnostic.hint = colors.base.purple

-- Helper function to set highlights
local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Editor highlights
hi('Normal', { fg = colors.fg.base, bg = colors.bg.base })
hi('NormalFloat', { fg = colors.fg.base, bg = colors.ui.menu_bg })
hi('FloatBorder', { fg = colors.ui.border, bg = colors.ui.menu_bg })
hi('ColorColumn', { bg = colors.bg.highlight })
hi('Cursor', { fg = colors.bg.base, bg = colors.fg.base })
hi('CursorLine', { bg = colors.bg.highlight })
hi('CursorColumn', { bg = colors.bg.highlight })
hi('CursorLineNr', { fg = colors.base.yellow, bold = true })
hi('LineNr', { fg = colors.fg.dim })
hi('SignColumn', { bg = colors.bg.base })
hi('EndOfBuffer', { fg = colors.bg.base }) -- Hide tildes on empty lines
hi('Folded', { fg = colors.comment, bg = colors.bg.alt })
hi('FoldColumn', { fg = colors.comment, bg = colors.bg.base })
hi('VertSplit', { fg = colors.ui.border })
hi('WinSeparator', { fg = colors.ui.border })

-- Search and selection
hi('Search', { fg = colors.bg.base, bg = colors.search })
hi('IncSearch', { fg = colors.bg.base, bg = colors.base.orange })
hi('Visual', { bg = colors.bg.visual })
hi('VisualNOS', { bg = colors.bg.visual })

-- Popup menu
hi('Pmenu', { fg = colors.fg.base, bg = colors.ui.menu_bg })
hi('PmenuSel', { fg = colors.fg.base, bg = colors.ui.menu_sel })
hi('PmenuSbar', { bg = colors.ui.border })
hi('PmenuThumb', { bg = colors.fg.dim })

-- Tabline
hi('TabLine', { fg = colors.fg.dim, bg = colors.bg.alt })
hi('TabLineSel', { fg = colors.fg.base, bg = colors.bg.base })
hi('TabLineFill', { bg = colors.bg.alt })

-- Statusline
hi('StatusLine', { fg = colors.fg.base, bg = colors.bg.alt })
hi('StatusLineNC', { fg = colors.fg.dim, bg = colors.bg.alt })

-- Messages
hi('ErrorMsg', { fg = colors.diagnostic.error })
hi('WarningMsg', { fg = colors.diagnostic.warning })
hi('ModeMsg', { fg = colors.base.green })
hi('MoreMsg', { fg = colors.base.cyan })
hi('Question', { fg = colors.base.cyan })

-- Syntax highlighting
hi('Comment', { fg = colors.comment, italic = true })
hi('Constant', { fg = colors.base.orange })
hi('String', { fg = colors.base.green })
hi('Character', { fg = colors.base.green })
hi('Number', { fg = colors.base.orange })
hi('Boolean', { fg = colors.base.orange })
hi('Float', { fg = colors.base.orange })

hi('Identifier', { fg = colors.base.red })
hi('Function', { fg = colors.base.blue })

hi('Statement', { fg = colors.base.purple })
hi('Conditional', { fg = colors.base.purple })
hi('Repeat', { fg = colors.base.purple })
hi('Label', { fg = colors.base.purple })
hi('Operator', { fg = colors.base.cyan })
hi('Keyword', { fg = colors.base.purple })
hi('Exception', { fg = colors.base.purple })

hi('PreProc', { fg = colors.base.yellow })
hi('Include', { fg = colors.base.purple })
hi('Define', { fg = colors.base.purple })
hi('Macro', { fg = colors.base.red })
hi('PreCondit', { fg = colors.base.yellow })

hi('Type', { fg = colors.base.yellow })
hi('StorageClass', { fg = colors.base.purple })
hi('Structure', { fg = colors.base.yellow })
hi('Typedef', { fg = colors.base.yellow })

hi('Special', { fg = colors.base.cyan })
hi('SpecialChar', { fg = colors.base.cyan })
hi('Tag', { fg = colors.base.red })
hi('Delimiter', { fg = colors.fg.base })
hi('SpecialComment', { fg = colors.comment })
hi('Debug', { fg = colors.base.red })

hi('Underlined', { fg = colors.base.cyan, underline = true })
hi('Ignore', { fg = colors.comment })
hi('Error', { fg = colors.diagnostic.error })
hi('Todo', { fg = colors.base.yellow, bold = true })

-- Treesitter highlights (modern syntax highlighting)
hi('@comment', { link = 'Comment' })
hi('@constant', { link = 'Constant' })
hi('@constant.builtin', { fg = colors.base.orange })
hi('@constant.macro', { link = 'Macro' })
hi('@string', { link = 'String' })
hi('@string.escape', { fg = colors.base.cyan })
hi('@string.special', { fg = colors.base.cyan })
hi('@character', { link = 'Character' })
hi('@number', { link = 'Number' })
hi('@boolean', { link = 'Boolean' })
hi('@float', { link = 'Float' })

hi('@function', { link = 'Function' })
hi('@function.builtin', { fg = colors.base.cyan })
hi('@function.macro', { link = 'Macro' })
hi('@method', { link = 'Function' })
hi('@constructor', { fg = colors.base.yellow })
hi('@parameter', { fg = colors.base.red })

hi('@keyword', { link = 'Keyword' })
hi('@keyword.function', { fg = colors.base.purple })
hi('@keyword.operator', { fg = colors.base.purple })
hi('@keyword.return', { fg = colors.base.purple })
hi('@conditional', { link = 'Conditional' })
hi('@repeat', { link = 'Repeat' })
hi('@label', { link = 'Label' })
hi('@operator', { link = 'Operator' })
hi('@exception', { link = 'Exception' })

hi('@variable', { fg = colors.fg.base })
hi('@variable.builtin', { fg = colors.base.red })
hi('@type', { link = 'Type' })
hi('@type.builtin', { fg = colors.base.yellow })
hi('@type.definition', { link = 'Type' })
hi('@field', { fg = colors.base.red })
hi('@property', { fg = colors.base.red })

hi('@punctuation.delimiter', { fg = colors.fg.alt })
hi('@punctuation.bracket', { fg = colors.fg.alt })
hi('@punctuation.special', { fg = colors.base.cyan })

hi('@tag', { fg = colors.base.red })
hi('@tag.attribute', { fg = colors.base.orange })
hi('@tag.delimiter', { fg = colors.fg.alt })

-- LSP highlights
hi('LspReferenceText', { bg = colors.bg.highlight })
hi('LspReferenceRead', { bg = colors.bg.highlight })
hi('LspReferenceWrite', { bg = colors.bg.highlight })
hi('LspSignatureActiveParameter', { fg = colors.base.orange, bold = true })

-- Diagnostic highlights
hi('DiagnosticError', { fg = colors.diagnostic.error })
hi('DiagnosticWarn', { fg = colors.diagnostic.warning })
hi('DiagnosticInfo', { fg = colors.diagnostic.info })
hi('DiagnosticHint', { fg = colors.diagnostic.hint })

hi('DiagnosticVirtualTextError', { fg = colors.diagnostic.error, bg = colors.bg.base })
hi('DiagnosticVirtualTextWarn', { fg = colors.diagnostic.warning, bg = colors.bg.base })
hi('DiagnosticVirtualTextInfo', { fg = colors.diagnostic.info, bg = colors.bg.base })
hi('DiagnosticVirtualTextHint', { fg = colors.diagnostic.hint, bg = colors.bg.base })

hi('DiagnosticUnderlineError', { undercurl = true, sp = colors.diagnostic.error })
hi('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.diagnostic.warning })
hi('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.diagnostic.info })
hi('DiagnosticUnderlineHint', { undercurl = true, sp = colors.diagnostic.hint })

-- Git signs
hi('GitSignsAdd', { fg = colors.git.add })
hi('GitSignsChange', { fg = colors.git.change })
hi('GitSignsDelete', { fg = colors.git.delete })

-- Diff
hi('DiffAdd', { fg = colors.git.add, bg = colors.bg.base })
hi('DiffChange', { fg = colors.git.change, bg = colors.bg.base })
hi('DiffDelete', { fg = colors.git.delete, bg = colors.bg.base })
hi('DiffText', { fg = colors.fg.base, bg = colors.bg.highlight })

-- Telescope
hi('TelescopeNormal', { fg = colors.fg.base, bg = colors.ui.menu_bg })
hi('TelescopeBorder', { fg = colors.ui.border, bg = colors.ui.menu_bg })
hi('TelescopePromptBorder', { fg = colors.ui.border, bg = colors.ui.menu_bg })
hi('TelescopeResultsBorder', { fg = colors.ui.border, bg = colors.ui.menu_bg })
hi('TelescopePreviewBorder', { fg = colors.ui.border, bg = colors.ui.menu_bg })
hi('TelescopeSelection', { fg = colors.fg.base, bg = colors.ui.menu_sel })
hi('TelescopeMatching', { fg = colors.search })

-- NvimTree
hi('NvimTreeNormal', { fg = colors.fg.base, bg = colors.bg.alt })
hi('NvimTreeFolderIcon', { fg = colors.base.blue })
hi('NvimTreeFolderName', { fg = colors.base.blue })
hi('NvimTreeOpenedFolderName', { fg = colors.base.blue, bold = true })
hi('NvimTreeSymlink', { fg = colors.base.cyan })
hi('NvimTreeExecFile', { fg = colors.base.green })

-- Which-key
hi('WhichKey', { fg = colors.base.purple })
hi('WhichKeyGroup', { fg = colors.base.cyan })
hi('WhichKeyDesc', { fg = colors.fg.base })
hi('WhichKeySeperator', { fg = colors.comment })
hi('WhichKeyFloat', { bg = colors.ui.menu_bg })

-- Terminal colors
vim.g.terminal_color_0 = colors.bg.base
vim.g.terminal_color_1 = colors.base.red
vim.g.terminal_color_2 = colors.base.green
vim.g.terminal_color_3 = colors.base.yellow
vim.g.terminal_color_4 = colors.base.blue
vim.g.terminal_color_5 = colors.base.purple
vim.g.terminal_color_6 = colors.base.cyan
vim.g.terminal_color_7 = colors.fg.base
vim.g.terminal_color_8 = colors.comment
vim.g.terminal_color_9 = colors.base.red
vim.g.terminal_color_10 = colors.base.green
vim.g.terminal_color_11 = colors.base.yellow
vim.g.terminal_color_12 = colors.base.blue
vim.g.terminal_color_13 = colors.base.purple
vim.g.terminal_color_14 = colors.base.cyan
vim.g.terminal_color_15 = colors.fg.base

return {}

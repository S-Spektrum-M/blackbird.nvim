local M = {}

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
end

vim.g.colors_name = 'blackbird'

local colors = {
    -- Background colors
    bg = {
        base = '#0d0d0d',      -- Pure black base
        alt = '#1a1a1a',       -- Slightly lighter background
        highlight = '#262626',  -- Highlight background
        visual = '#333333',     -- Visual selection
    },

    -- Foreground colors
    fg = {
        base = '#e6e6e6',      -- Main text
        alt = '#c6c6c6',       -- Secondary text
        dim = '#8d8d8d',       -- Dimmed text
    },

    -- Base set
    red = "#e55a5a",
    orange = "#d4956b",
    yellow = "#d4af37",
    green = "#5cb370",
    cyan = "#42b8c7",
    blue = "#42a5c7",
    purple = "#a85fb5",
    magenta = "#d85582",
}

-- Special colors
colors.comment = '#5c6370'   -- Atom One Dark comment color
colors.selection = '#3e4451' -- Selection background
colors.search = '#e5c07b'    -- Search highlight (Atom One Dark yellow)

-- UI colors (IBM Carbon inspired)
colors.border = '#393939'   -- Carbon's border color
colors.menu_bg = '#262626'  -- Menu background
colors.menu_sel = '#393939' -- Menu selection

-- Git colors
colors.git_add = colors.green
colors.git_change = colors.yellow
colors.git_delete = colors.red

-- Diagnostic colors
colors.error = colors.red
colors.warning = colors.yellow
colors.info = colors.cyan
colors.hint = colors.purple

-- Helper function to set highlights
local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Editor highlights
hi('Normal', { fg = colors.fg.base, bg = colors.bg.base })
hi('NormalFloat', { fg = colors.fg.base, bg = colors.menu_bg })
hi('FloatBorder', { fg = colors.border, bg = colors.menu_bg })
hi('ColorColumn', { bg = colors.bg.highlight })
hi('Cursor', { fg = colors.bg.base, bg = colors.fg.base })
hi('CursorLine', { bg = colors.bg.highlight })
hi('CursorColumn', { bg = colors.bg.highlight })
hi('CursorLineNr', { fg = colors.yellow, bold = true })
hi('LineNr', { fg = colors.fg.dim })
hi('SignColumn', { bg = colors.bg.base })
hi('EndOfBuffer', { fg = colors.bg.base }) -- Hide tildes on empty lines
hi('Folded', { fg = colors.comment, bg = colors.bg.alt })
hi('FoldColumn', { fg = colors.comment, bg = colors.bg.base })
hi('VertSplit', { fg = colors.border })
hi('WinSeparator', { fg = colors.border })

-- Search and selection
hi('Search', { fg = colors.bg.base, bg = colors.search })
hi('IncSearch', { fg = colors.bg.base, bg = colors.orange })
hi('Visual', { bg = colors.bg.visual })
hi('VisualNOS', { bg = colors.bg.visual })

-- Popup menu
hi('Pmenu', { fg = colors.fg.base, bg = colors.menu_bg })
hi('PmenuSel', { fg = colors.fg.base, bg = colors.menu_sel })
hi('PmenuSbar', { bg = colors.border })
hi('PmenuThumb', { bg = colors.fg.dim })

-- Tabline
hi('TabLine', { fg = colors.fg.dim, bg = colors.bg.alt })
hi('TabLineSel', { fg = colors.fg.base, bg = colors.bg.base })
hi('TabLineFill', { bg = colors.bg.alt })

-- Statusline
hi('StatusLine', { fg = colors.fg.base, bg = colors.bg.alt })
hi('StatusLineNC', { fg = colors.fg.dim, bg = colors.bg.alt })

-- Messages
hi('ErrorMsg', { fg = colors.error })
hi('WarningMsg', { fg = colors.warning })
hi('ModeMsg', { fg = colors.green })
hi('MoreMsg', { fg = colors.cyan })
hi('Question', { fg = colors.cyan })

-- Syntax highlighting
hi('Comment', { fg = colors.comment, italic = true })
hi('Constant', { fg = colors.orange })
hi('String', { fg = colors.green })
hi('Character', { fg = colors.green })
hi('Number', { fg = colors.orange })
hi('Boolean', { fg = colors.orange })
hi('Float', { fg = colors.orange })

hi('Identifier', { fg = colors.red })
hi('Function', { fg = colors.blue })

hi('Statement', { fg = colors.purple })
hi('Conditional', { fg = colors.purple })
hi('Repeat', { fg = colors.purple })
hi('Label', { fg = colors.purple })
hi('Operator', { fg = colors.cyan })
hi('Keyword', { fg = colors.purple })
hi('Exception', { fg = colors.purple })

hi('PreProc', { fg = colors.yellow })
hi('Include', { fg = colors.purple })
hi('Define', { fg = colors.purple })
hi('Macro', { fg = colors.red })
hi('PreCondit', { fg = colors.yellow })

hi('Type', { fg = colors.yellow })
hi('StorageClass', { fg = colors.purple })
hi('Structure', { fg = colors.yellow })
hi('Typedef', { fg = colors.yellow })

hi('Special', { fg = colors.cyan })
hi('SpecialChar', { fg = colors.cyan })
hi('Tag', { fg = colors.red })
hi('Delimiter', { fg = colors.fg.base })
hi('SpecialComment', { fg = colors.comment })
hi('Debug', { fg = colors.red })

hi('Underlined', { fg = colors.cyan, underline = true })
hi('Ignore', { fg = colors.comment })
hi('Error', { fg = colors.error })
hi('Todo', { fg = colors.yellow, bold = true })

-- Treesitter highlights (modern syntax highlighting)
hi('@comment', { link = 'Comment' })
hi('@constant', { link = 'Constant' })
hi('@constant.builtin', { fg = colors.orange })
hi('@constant.macro', { link = 'Macro' })
hi('@string', { link = 'String' })
hi('@string.escape', { fg = colors.cyan })
hi('@string.special', { fg = colors.cyan })
hi('@character', { link = 'Character' })
hi('@number', { link = 'Number' })
hi('@boolean', { link = 'Boolean' })
hi('@float', { link = 'Float' })

hi('@function', { link = 'Function' })
hi('@function.builtin', { fg = colors.cyan })
hi('@function.macro', { link = 'Macro' })
hi('@method', { link = 'Function' })
hi('@constructor', { fg = colors.yellow })
hi('@parameter', { fg = colors.red })

hi('@keyword', { link = 'Keyword' })
hi('@keyword.function', { fg = colors.purple })
hi('@keyword.operator', { fg = colors.purple })
hi('@keyword.return', { fg = colors.purple })
hi('@conditional', { link = 'Conditional' })
hi('@repeat', { link = 'Repeat' })
hi('@label', { link = 'Label' })
hi('@operator', { link = 'Operator' })
hi('@exception', { link = 'Exception' })

hi('@variable', { fg = colors.fg.base })
hi('@variable.builtin', { fg = colors.red })
hi('@type', { link = 'Type' })
hi('@type.builtin', { fg = colors.yellow })
hi('@type.definition', { link = 'Type' })
hi('@field', { fg = colors.red })
hi('@property', { fg = colors.red })

hi('@punctuation.delimiter', { fg = colors.fg.alt })
hi('@punctuation.bracket', { fg = colors.fg.alt })
hi('@punctuation.special', { fg = colors.cyan })

hi('@tag', { fg = colors.red })
hi('@tag.attribute', { fg = colors.orange })
hi('@tag.delimiter', { fg = colors.fg.alt })

-- LSP highlights
hi('LspReferenceText', { bg = colors.bg.highlight })
hi('LspReferenceRead', { bg = colors.bg.highlight })
hi('LspReferenceWrite', { bg = colors.bg.highlight })
hi('LspSignatureActiveParameter', { fg = colors.orange, bold = true })

-- Diagnostic highlights
hi('DiagnosticError', { fg = colors.error })
hi('DiagnosticWarn', { fg = colors.warning })
hi('DiagnosticInfo', { fg = colors.info })
hi('DiagnosticHint', { fg = colors.hint })

hi('DiagnosticVirtualTextError', { fg = colors.error, bg = colors.bg.base })
hi('DiagnosticVirtualTextWarn', { fg = colors.warning, bg = colors.bg.base })
hi('DiagnosticVirtualTextInfo', { fg = colors.info, bg = colors.bg.base })
hi('DiagnosticVirtualTextHint', { fg = colors.hint, bg = colors.bg.base })

hi('DiagnosticUnderlineError', { undercurl = true, sp = colors.error })
hi('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.warning })
hi('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.info })
hi('DiagnosticUnderlineHint', { undercurl = true, sp = colors.hint })

-- Git signs
hi('GitSignsAdd', { fg = colors.git_add })
hi('GitSignsChange', { fg = colors.git_change })
hi('GitSignsDelete', { fg = colors.git_delete })

-- Diff
hi('DiffAdd', { fg = colors.git_add, bg = colors.bg.base })
hi('DiffChange', { fg = colors.git_change, bg = colors.bg.base })
hi('DiffDelete', { fg = colors.git_delete, bg = colors.bg.base })
hi('DiffText', { fg = colors.fg.base, bg = colors.bg.highlight })

-- Telescope (if using)
hi('TelescopeNormal', { fg = colors.fg.base, bg = colors.menu_bg })
hi('TelescopeBorder', { fg = colors.border, bg = colors.menu_bg })
hi('TelescopePromptBorder', { fg = colors.border, bg = colors.menu_bg })
hi('TelescopeResultsBorder', { fg = colors.border, bg = colors.menu_bg })
hi('TelescopePreviewBorder', { fg = colors.border, bg = colors.menu_bg })
hi('TelescopeSelection', { fg = colors.fg.base, bg = colors.menu_sel })
hi('TelescopeMatching', { fg = colors.search })

-- NvimTree (if using)
hi('NvimTreeNormal', { fg = colors.fg.base, bg = colors.bg.alt })
hi('NvimTreeFolderIcon', { fg = colors.blue })
hi('NvimTreeFolderName', { fg = colors.blue })
hi('NvimTreeOpenedFolderName', { fg = colors.blue, bold = true })
hi('NvimTreeSymlink', { fg = colors.cyan })
hi('NvimTreeExecFile', { fg = colors.green })

-- Which-key (if using)
hi('WhichKey', { fg = colors.purple })
hi('WhichKeyGroup', { fg = colors.cyan })
hi('WhichKeyDesc', { fg = colors.fg.base })
hi('WhichKeySeperator', { fg = colors.comment })
hi('WhichKeyFloat', { bg = colors.menu_bg })

-- Terminal colors
vim.g.terminal_color_0 = colors.bg.base
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.fg.base
vim.g.terminal_color_8 = colors.comment
vim.g.terminal_color_9 = colors.red
vim.g.terminal_color_10 = colors.green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.purple
vim.g.terminal_color_14 = colors.cyan
vim.g.terminal_color_15 = colors.fg.base

return M

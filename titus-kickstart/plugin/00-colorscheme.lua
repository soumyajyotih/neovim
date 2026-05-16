-- Colorscheme: loaded first (00- prefix) to avoid flash of default colors.
vim.pack.add {
  'https://github.com/rebelot/kanagawa.nvim',
  'https://github.com/lunarvim/synthwave84.nvim', -- alternate colorscheme
  'https://github.com/nlknguyen/papercolor-theme',
  'https://github.com/catppuccin/nvim',
  'https://github.com/ellisonleao/gruvbox.nvim',
}

require('kanagawa').setup {
  overrides = function(colors)
    local theme = colors.theme
    return {
      -- Floats
      NormalFloat = { fg = theme.ui.fg, bg = theme.ui.bg_m3 },
      FloatBorder = { fg = theme.ui.special, bg = theme.ui.bg_m3 },
      FloatTitle = { fg = theme.ui.special, bg = theme.ui.bg_m3, bold = true },

      -- Syntax: less blanket bold, more hierarchy
      ['@keyword'] = { fg = theme.syn.keyword, bold = true },
      ['@type.builtin'] = { fg = theme.syn.type },
      ['@function'] = { fg = theme.syn.fun, bold = true },
      ['@constructor'] = { fg = theme.syn.fun },
      ['@string'] = { fg = theme.syn.string },
      Comment = { fg = theme.syn.comment, italic = true },
      ['@constant'] = { fg = theme.syn.constant },
      ['@number'] = { fg = theme.syn.number },

      -- Popup menu
      Pmenu = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
      PmenuSel = { fg = theme.ui.fg, bg = theme.ui.bg_p2, bold = true },
      PmenuSbar = { bg = theme.ui.bg_m1 },
      PmenuThumb = { bg = theme.ui.special },

      -- Telescope
      TelescopeTitle = { fg = theme.ui.special, bold = true },
      TelescopePromptNormal = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
      TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
      TelescopePreviewNormal = { fg = theme.ui.fg, bg = theme.ui.bg_dim },
      TelescopeBorderNormal = { fg = theme.ui.special, bg = theme.ui.bg_m1 },

      -- Extra pop
      Visual = { bg = theme.ui.bg_p2 },
      Search = { fg = theme.ui.bg, bg = theme.syn.fun, bold = true },
      IncSearch = { fg = theme.ui.bg, bg = theme.syn.keyword, bold = true },
      CursorLine = { bg = theme.ui.bg_m1 },
      WinSeparator = { fg = theme.ui.special },
    }
  end,
}
require('catppuccin').setup {
  flavour = 'auto', -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = 'latte',
    dark = 'mocha',
  },
  transparent_background = false, -- disables setting the background color.
  float = {
    transparent = false, -- enable transparent floating windows
    solid = false, -- use solid styling for floating windows, see |winborder|
  },
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = 'dark',
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { 'italic' }, -- Change the style of comments
    conditionals = { 'italic' },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
    virtual_text = {
      errors = { 'italic' },
      hints = { 'italic' },
      warnings = { 'italic' },
      information = { 'italic' },
      ok = { 'italic' },
    },
    underlines = {
      errors = { 'underline' },
      hints = { 'underline' },
      warnings = { 'underline' },
      information = { 'underline' },
      ok = { 'underline' },
    },
    inlay_hints = {
      background = true,
    },
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
  auto_integrations = false,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = '',
    },
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
}

-- Default options:
require('gruvbox').setup {
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = '', -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
}

-- setup must be called before loading
vim.cmd 'set background=light'
-- require('kanagawa').load 'wave'
-- require('kanagawa').load 'lotus'
-- vim.cmd.colorscheme 'catppuccin-nvim'
-- vim.cmd.colorscheme 'PaperColor'
vim.cmd.colorscheme 'gruvbox'

-- Colorscheme: loaded first (00- prefix) to avoid flash of default colors.
vim.pack.add {
  'https://github.com/rebelot/kanagawa.nvim',
  'https://github.com/lunarvim/synthwave84.nvim', -- alternate colorscheme
  'https://github.com/nlknguyen/papercolor-theme',
  'https://github.com/catppuccin/nvim',
}

require('kanagawa').setup {
  overrides = function(colors)
    local theme = colors.theme
    return {
      -- Make floating windows stand out
      NormalFloat = { bg = theme.ui.bg_dim },
      FloatBorder = { fg = theme.ui.special, bg = theme.ui.bg_dim },
      FloatTitle = { fg = theme.ui.special, bold = true },

      -- Bolder keywords and types
      ['@keyword'] = { fg = theme.syn.keyword, bold = true },
      ['@type.builtin'] = { fg = theme.syn.type, bold = true },
      ['@function'] = { fg = theme.syn.fun, bold = true },
      ['@constructor'] = { fg = theme.syn.fun },

      -- Make strings and comments more distinct
      ['@string'] = { fg = theme.syn.string, italic = true },
      Comment = { fg = theme.syn.comment, italic = true },

      -- Brighten constants and numbers
      ['@constant'] = { fg = theme.syn.constant, bold = true },
      ['@number'] = { fg = theme.syn.number, bold = true },

      -- Popup menu
      Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
      PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
      PmenuSbar = { bg = theme.ui.bg_m1 },
      PmenuThumb = { bg = theme.ui.special },

      -- Make telescope pop
      TelescopeTitle = { fg = theme.ui.special, bold = true },
      TelescopePromptNormal = { bg = theme.ui.bg_p1 },
      TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
      TelescopePreviewNormal = { bg = theme.ui.bg_dim },
      TelescopeBorderNormal = { fg = theme.ui.bg_p2, bg = theme.ui.bg_m1 },
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

-- setup must be called before loading
vim.cmd 'set background=light'
-- require('kanagawa').load 'wave'
-- require('kanagawa').load 'lotus'
-- vim.cmd.colorscheme 'catppuccin-nvim'
vim.cmd.colorscheme 'PaperColor'

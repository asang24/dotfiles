return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    require('gruvbox').setup({
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = false, -- default is true
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = 'soft', -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true, -- set true to more beautiful
    })
    vim.cmd('colorscheme gruvbox')
  end,
}

-- return {
--   'sainnhe/everforest',
--   priority = 1000,
--   config = function()
--     vim.g.everforest_better_performance = 0
--     vim.g.everforest_transparent_background = 2
--     vim.g.everforest_enable_italic = 1
--     vim.g.everforest_diagnostic_line_highlight = 1
--     vim.g.everforest_background = 'medium'
--     vim.g.everforest_cursor = 'orange'
--
--     vim.cmd('colorscheme everforest')
--   end,
-- }

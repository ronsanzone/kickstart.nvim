return {
  'MeanderingProgrammer/render-markdown.nvim',
  -- Disabled while Neovim 0.12 + Treesitter Markdown injections throw:
  -- `attempt to call method 'range' (a nil value)`.
  enabled = false,
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    file_types = { 'markdown' },
  },
  ft = { 'markdown' },
  config = function()
    require('render-markdown').setup {
      completions = { lsp = { enabled = true } },
    }
  end,
}

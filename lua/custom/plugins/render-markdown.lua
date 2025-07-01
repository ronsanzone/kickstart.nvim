return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    file_types = { 'markdown', 'copilot-chat' },
  },
  ft = { 'markdown', 'copilot-chat' },
  config = function()
    require('render-markdown').setup {
      completions = { lsp = { enabled = true } },
    }
  end,
}

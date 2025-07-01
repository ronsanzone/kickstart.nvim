return {
  'github/copilot.vim',
  config = function()
    -- NOTE: with the below config then we only get copilot suggesting when we hit ctrl and k (i chose this as its both middle fingers), and you accept with tab
    -- vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_enabled = false

    vim.keymap.set('i', '<C-k>', '<Plug>(copilot-suggest)', {
      desc = 'Manually trigger Copilot suggestion',
    })

    -- these are the keymaps that are set by default
    vim.keymap.set('n', '<leader>ce', ':Copilot enable<CR>', { desc = '[C]opilot [E]nable' })
    vim.keymap.set('n', '<leader>cd', ':Copilot disable<CR>', { desc = '[C]opilot [D]isable' })
  end,
}

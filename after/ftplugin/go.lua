-- Go-specific filetype settings
-- Failsafe: Detach gopls if it attaches to files in ~/mms
vim.api.nvim_create_autocmd('LspAttach', {
  buffer = 0,
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == 'gopls' then
      local filepath = vim.fn.expand('%:p')
      if filepath:find('/Users/ron.sanzone/mms', 1, true) then
        vim.lsp.buf_detach_client(args.buf, args.data.client_id)
        vim.notify('gopls disabled for ~/mms', vim.log.levels.INFO)
      end
    end
  end,
})

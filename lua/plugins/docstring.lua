return { 
  "danymat/neogen", 
  -- config = true,
  -- Uncomment next line if you want to follow only stable versions
  version = "*",
  
  config = function()
    local neogen = require('neogen')
    neogen.setup({
    --   snippet_engine = "luasnip"
    })
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate({ annotation_convention = { python = 'numpydoc' } })<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ type = 'class', annotation_convention = { python = 'numpydoc' } })<CR>", opts)
    -- vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ annotation_convention = { python = "numpydoc"}, type = 'class' })<CR>", opts)
  end,
  -- local opts = { noremap = true, silent = true }
  -- vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate({ annotation_convention = { python = 'numpydoc' } })<CR>", opts)
}

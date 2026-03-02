return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = function(term) -- 20 | function(term)
        if term.direction == "horizontal" then
          return 10
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = "<C-g>", -- general terminal
      shade_terminals = true,
      highlights = {
        Normal = { guibg = "NONE", guifg = "NONE" },
        NormalFloat = { guibg = "NONE", guifg = "NONE" },
        FloatBorder = { guibg = "NONE", guifg = "NONE" },
      },
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      persist_size = true,
      close_on_exit = true, -- close the terminal window when the process exits
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shell = vim.o.shell,
      -- if Dockerfile, add: shell = "/bin/bash"
    })

    function _G.set_terminal_keymaps()
      local opts = { buffer = 0, noremap = true }
      vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set("t", "<C><Left>", [[<Cmd>wincmd l<CR>]], opts)
    end

    -- if you only want these mappings for toggle term use term://*toggleterm#* instead
    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

    local Terminal = require("toggleterm.terminal").Terminal
    local Pyterm_h = Terminal:new({ cmd = "ipythonRE", hidden = true, direction = "horizontal" })
    local Pyterm_v = Terminal:new({ cmd = "ipythonRE", hidden = true, direction = "vertical" })

    function _Pytermh_toggle()
      Pyterm_h:toggle()
    end

    function _Pytermv_toggle()
      Pyterm_v:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>tph", "<cmd>lua _Pytermh_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>tpv", "<cmd>lua _Pytermv_toggle()<CR>", { noremap = true, silent = true })
  end,
}

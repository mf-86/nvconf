return{
  "LudoPinelli/comment-box.nvim",
  config = function()  
    local cb = require("comment-box")
    local opts = { noremap = true, silent = true }

    -- vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", { silent = true, noremap = true })
    vim.keymap.set({ "n", "v" }, "<Leader>cb", "<Cmd>CBccbox10<CR>", opts)
    -- Named parts
    vim.keymap.set({ "n", "v" }, "<Leader>ct", "<Cmd>CBllline<CR>", opts)
    -- Simple line
    vim.keymap.set("n", "<Leader>cl", "<Cmd>CBline<CR>", opts)
    -- keymap("i", "<M-l>", "<Cmd>CBline<CR>", opts) -- To use in Insert Mode
    -- Marked comments
    vim.keymap.set({ "n", "v" }, "<Leader>cm", "<Cmd>CBllbox14<CR>", opts)
    -- Removing a box is simple enough with the command (CBd), but if you
    -- use it a lot:
    vim.keymap.set({ "n", "v" }, "<Leader>cd", "<Cmd>CBd<CR>", opts)
   end,
}


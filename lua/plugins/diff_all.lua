return {
  "sminrana/nvim-filediff",
  dependencies = {"ibhagwan/fzf-lua"},
  event = "VeryLazy",
  config = function()
    local filediff = require("filediff")

      vim.keymap.set("n", "<leader>fd", "<cmd>FileDiff<CR>", { desc = "Diff two files" })
      vim.keymap.set("n", "<leader>fi", "<cmd>FileDiffInput<CR>", { desc = "Diff via input paths" })
      vim.keymap.set("n", "<leader>fo", "<cmd>FolderDiff<CR>", { desc = "Diff two folders" })
  end,
}

vim.keymap.set("n", "<leader>rt", vim.cmd.Ex)

vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>fs", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


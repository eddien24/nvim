vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex, { desc = "open file explorer" })
vim.keymap.set("n", "<leader>nh", vim.cmd.noh, { desc = "turn off search highlight" })
vim.keymap.set("v", "<leader>cc", '"+y', { desc = "copy selection to system clipboard" }) 

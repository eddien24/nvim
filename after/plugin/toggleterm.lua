term = require("toggleterm")

term.setup{}

vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm)
-- idk how to get the float keyword to always work
-- vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm{direction=float}) 

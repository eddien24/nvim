vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true 

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.wo.number = true

local numtogglegroup = vim.api.nvim_create_augroup("numtoggle", {})
vim.api.nvim_create_autocmd(
    {"BufEnter", "FocusGained", "InsertLeave"},
    {
	pattern = '*',
	callback = function()
	    vim.wo.relativenumber = true
	end,
	group = numtogglegroup
    })

vim.api.nvim_create_autocmd(
    {"BufLeave", "FocusLost", "InsertEnter"},
    {
	pattern = '*',
	callback = function()
	    vim.wo.relativenumber = false
	end,
	group = numtogglegroup
})

local lsp_zero = require("lsp-zero")
local cmp = require("cmp")

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

vim.lsp.enable({
    "clangd",
    "rust_analyzer",
    "texlab",
    "gopls",
    "pyright",
    "tinymist",
})

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
    }),
    preselect = "item",
    completion = {
        completeopt = "menu,menuone,noinsert",
    },
})

vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
vim.keymap.set("n", "gr", vim.lsp.buf.references)

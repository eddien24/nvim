local lsp_zero = require('lsp-zero')
local config = require('lspconfig')
local cmp = require('cmp')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

config.clangd.setup{}
config.cmake.setup{}
config.rust_analyzer.setup{}

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
    }),
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
})

return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    init = function()
        vim.api.nvim_create_autocmd('FileType', { 
            callback = function() 
                pcall(vim.treesitter.start) 
            end, 
        }) 
    end, 
    opts = {
        ensure_installed = { "all" }, 
        auto_install = true, 
    }, 
}

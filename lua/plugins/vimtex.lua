return {
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = "zathura_simple"
        vim.g.vimtex_compiler_method = "tectonic"
        vim.g.vimtex_syntax_enabled = true
    end
}

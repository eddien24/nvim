return {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("fzf-lua").setup({})
        
        local fzf = require('fzf-lua')
        vim.keymap.set('n', '<leader>ff', fzf.files, {})
        vim.keymap.set('n', '<leader>fs', fzf.live_grep, {})
        vim.keymap.set('n', '<leader>fb', fzf.buffers, {})
    end,
}

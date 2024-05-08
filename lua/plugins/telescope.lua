return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup({
            defaults = {
                path_display = function(_, path)
                    local tail = require("telescope.utils").path_tail(path)
                    path = string.format("%s (%s)", tail, path)
                    local highlights = {
                        {
                            {
                                0,     -- highlight start position
                                #path, -- highlight end position
                            },
                            "Comment", -- highlight group name
                        },
                    }
                    return path, highlights
                end
            }
        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
        vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
    end,
}

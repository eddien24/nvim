local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.forge = {
    install_info = {
        url = "~/Projects/tree-sitter-forge",
        files = { "src/parser.c" },
    },
    filetype = "frg",
}

vim.filetype.add({
    extension = { frg = "forge" },
})

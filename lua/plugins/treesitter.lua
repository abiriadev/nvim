return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)

			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

			parser_config.gotmpl = {
				install_info = {
					url = "https://github.com/msvechla/tree-sitter-go-template",
					files = { "src/parser.c" },
				},
				filetype = "gotmpl",
				used_by = { "gohtmltmpl", "gotexttmpl", "gotmpl", "yaml" },
			}

			parser_config.lalrpop = {
				install_info = {
					url = "https://github.com/traxys/tree-sitter-lalrpop",
					files = { "src/parser.c" },
				},
				filetype = "lalrpop",
			}
		end,
	},
}

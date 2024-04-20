return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "HiPhish/nvim-ts-rainbow2" },
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
					-- url = "https://github.com/traxys/tree-sitter-lalrpop",
					url = "~/lab/forks/tree-sitter-lalrpop",
					files = { "src/parser.c", "src/scanner.c" },
					revision = "46c3f96",
				},
				filetype = "lalrpop",
			}

			parser_config.pest = {
				install_info = {
					url = "https://git.sr.ht/~az1/tree-sitter-pest",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "pest",
			}

			parser_config.melody = {
				install_info = {
					url = "~/lab/tree-sitter-melody",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "melody",
			}

			parser_config.typespec = {
				install_info = {
					url = "https://github.com/happenslol/tree-sitter-typespec",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "typespec",
			}

			opts.rainbow = {
				enable = true,
				query = "rainbow-parens",
				strategy = require("ts-rainbow").strategy.global,
			}
		end,
	},
}

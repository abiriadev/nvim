return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "golines" },
			fish = { "fish_indent" },
			sh = { "shfmt" },
			typespec = { "typespec" },
		},
		formatters = {
			typespec = {
				command = "tsp",
				args = { "format", "$FILENAME" },
				stdin = false,
			},
		},
	},
}

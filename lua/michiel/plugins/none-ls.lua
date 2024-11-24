return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd.with({
					env = {
						PRETTIERD_DEFAULT_CONFIG = vim.fn.expand(
							"~/.config/nvim/utils/prettier-config/.prettierrc.json"
						),
					},
				}),
				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "<leader>mp", vim.lsp.buf.format, {})
	end,
}
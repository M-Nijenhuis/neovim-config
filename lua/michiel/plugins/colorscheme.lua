return {
	"rose-pine/neovim",
	name = "rose-pine",

	config = function()

		require("rose-pine").setup({

			dark_variant = "moon", -- main, moon, or dawn

			styles = {
				bold = true,
				italic = true,
				transparency = true,
			},

			enable = {
				terminal = true,
				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
				migrations = true, -- Handle deprecated options automatically
			},
		})

		vim.cmd("colorscheme rose-pine")

		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	end

}
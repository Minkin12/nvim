return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"bash",
				"c",
				"cmake",
				"css",
				"c_sharp",
				"html",
				"javascript",
				"typescript",
				"java",
				"json",
				"lua",
				"make",
				"markdown",
				"php",
				"python",
				"swift",
				"yaml"
			},


			sync_install = false,

			auto_install = true,

			highlight = {
				enable = true,
			},

			indent = {
				disable = true,
			},

			additional_vim_regex_highlighting = false,
		})

		local opts = require("config.utils").opts

		vim.api.nvim_set_keymap(
			"n",
			"<leader>it",
			":InspectTree<CR>",
			opts(true, true, "(:InspectTree) Inspect treesitter syntax tree")
		)
	end,
}

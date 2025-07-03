return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- JS/TS
				--   null_ls.builtins.formatting.prettier,
				--   null_ls.builtins.diagnostics.eslint_d,

				-- Python
				null_ls.builtins.formatting.black,

				-- Lua
				null_ls.builtins.formatting.stylua,

				-- PHP

				-- null_ls.builtins.formatting.phpcbf,

				-- HTML/CSS
				--   null_ls.builtins.diagnostics.stylelint,

				null_ls.builtins.formatting.prettier.with({
					filetypes = { "json", "yaml", "markdown", "html", "css" },
				}),
			},
		})
	end,
}


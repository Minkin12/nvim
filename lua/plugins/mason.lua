-- See conform.lua for linters and formatters
return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			ensure_installed = {
				-- Java
				--	"jdtls",

				-- TypeScript / JavaScript
				"ts_ls",

				-- Python
				"pylsp",

				-- Lua
				"lua_ls",

				-- C++
				"clangd",

				-- C#
				"omnisharp",

				-- PHP
				"intelephense",

				-- Web
				"html",
				"cssls",

				-- JSON
				"jsonls",

				-- YAML
				"yamlls",

				-- Markdown
				"marksman",

				-- XML
				"lemminx",

				-- English
				"grammarly",
			},
			automatic_installation = true,
		},
	},
	{
		"jay-babu/mason-null-ls.nvim",
		lazy = false,
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					--Java
					-- "semgrep",

					--C++
					"cpplint",
					"clang-format",

					-- TypeScript / JavaScript
					"eslint_d",
					"prettier",

					-- Python
					"black",
					"flake8",
					"pylint",
					"ruff",

					-- Lua
					"stylua",
					"luacheck",

					-- PHP
					"phpcs",
					"phpcbf",
					"phpstan",

					-- HTML/CSS
					"stylelint",

					-- Markdown linter
					"markdownlint",

					-- YAML linter
					"yamllint",
				},
				automatic_installation = false,
			})
		end,
	},
}

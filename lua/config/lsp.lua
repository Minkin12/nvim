vim.lsp.enable({
	-- Shell / C / Infra
	"bashls",
	"clangd",
	"cmake",
	--"docker_compose_language_service",
	--"dockerls",
	"terraformls",
	"helm_ls",

	-- Web & Styles
	"cssls",
	"html",
	--"emmet_language_server",

	-- JavaScript / TypeScript
	"ts_ls",
	"jsonls",

	-- Python
	"pylsp",
	"pyright",

	-- Lua
	"lua_ls",

	-- Java
	"jdtls",

	-- C#
	"omnisharp",

	-- PHP
	"intelephense",

	-- YAML
	"yamlls",

	-- Markdown
	--"marksman",

	-- XML
	--"lemminx",

	-- Swift
	"sourcekit",

	-- SQL
	--"sqlls",

	-- Go
	--"gopls",

	-- Grammar
	"grammarly",
})

--Manually edit sourcekit lsp so it doesn't attach to c++ files
vim.lsp.config.sourcekit = {

	cmd = { "sourcekit-lsp" },
	filetypes = { "swift", "swiftpm", "playground", "manifest" },
	root_markers = {
		".git",
		"Package.swift",
		"Cartfile",
		"Podfile",
		"swift-tools-version",
	},
}

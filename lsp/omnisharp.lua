return {
	cmd = {
		"omnisharp",
		"--languageserver",
		"--hostPID", tostring(vim.fn.getpid()),
		-- Disable Roslyn analyzers to speed up Unity projects
		"--disable-analyzers",
		"--enable-import-completion",
		"--enable-package-auto-restore",
	},
	filetypes = { "cs" },
	root_markers = { "Assets", "ProjectSettings", ".git" },
}
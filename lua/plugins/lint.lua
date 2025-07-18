-- Linter
return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			c = { "cppcheck" },
			lua = { "luacheck" },
			cpp = { "cppcheck" },
			python = { "ruff" },
			dockerfile = { "hadolint" },
			go = { "golangcilint" },
			java = { "semgrep" },
			sql = { "sqlfluff" },
			yaml = { "yamllint" },
			php = { "phpstan" },
			-- Add more as needed
		}

		-- Create autocommand to run linting
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged", "TextChangedI" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}

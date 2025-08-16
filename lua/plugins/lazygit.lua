return {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").load_extension("lazygit")
    end,
    keys = {
        -- { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        -- would probably always want to launch via the project root of the current file
        { "<leader>lg", "<cmd>LazyGitCurrent<cr>", desc = "LazyGit" }
    },

}
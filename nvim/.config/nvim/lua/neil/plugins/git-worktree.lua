return {
    "ThePrimeagen/git-worktree.nvim",
    lazy = true,
    dependencies = {
        { "nvim-lua/plenary.nvim" },
    },
    config = function(opts)
        require("git-worktree").setup(opts)
        require("telescope").load_extension("git_worktree")
    end,
    keys = {
        { "<leader>gw", ":lua require 'telescope'.extensions.git_worktree.git_worktrees()<CR>" },
        { "<leader>gW", ":lua require 'telescope'.extensions.git_worktree.create_git_worktree()<CR>" },
        -- { <C-d> inside worktrees view will delete a worktree }
    },
}

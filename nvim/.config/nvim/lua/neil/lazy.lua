local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("neil.plugins", { -- lazy sources neil.plugins
    defaults = {
        lazy = true, -- lazy load plugins
        version = nil, -- always install latest plugin version
    },
    change_detection = {
        enabled = false, -- do not auto reload lazy when a nvim config file changes
    },
    install = { missing = true }, -- install missing plugins on startup
    checker = { enabled = false }, -- do not auto update plugins
})

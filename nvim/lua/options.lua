if os.getenv("TERM") == "xterm-kitty" then
    vim.cmd("silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0")
    vim.opt.termguicolors = true
    vim.api.nvim_create_autocmd({"VimLeavePre"}, {
        pattern = {"*"},
        command = "silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding-h=16 padding-v=8"
    })
end

vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.opt.mouse = "a"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.splitbelow = true
vim.opt.splitright = true 
vim.opt.scrolloff=10
vim.opt.wrap = false
vim.opt.showmode = false

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

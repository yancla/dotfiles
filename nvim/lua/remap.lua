local wk = require"which-key"
local dap = require"dap"
local builtin = require"telescope.builtin"

vim.g.mapleader = " "

-- Move Lines
vim.keymap.set("i", "º", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "∆", "<Esc>:m .-2<CR>==gi")
vim.keymap.set("n", "º", ":m .+1<CR>==")
vim.keymap.set("n", "∆", ":m .-2<CR>==")
vim.keymap.set("v", "º", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "∆", ":m '<-2<CR>gv=gv")

-- add center to jump commands
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

wk.register({
   -- BUFFERS
   b = {
        name = "+buffers",
        j = { "<cmd>bnext<cr>", "next" },
        k = { "<cmd>bprevious<cr>", "previous" },
        l = { "<cmd>buffers<cr>", "list" },
   },
   -- COQ
   c = {
        name = "+coq",
        d = { "<cmd>COQdeps<cr>", "deps" },
        h = { "<cmd>COQhelp<cr>", "help" },
        n = { "<cmd>COQnow<cr>", "now" },
        s = { "<cmd>COQsnips<cr>", "snips" },
        t = { "<cmd>COQstat<cr>", "stat" },
   },
   -- DAP
   d = {
        name = "+dap",
        c = { dap.continue, "continue" },
        t = { dap.toggle_breakpoint, "toggle breakpoint" },
        i = { dap.step_into, "step into" },
        o = { dap.step_over, "step over" },
        r = { dap.repl.open, "open REPL" },
   },
   -- NETRW
   e = {
        name = "+explorer",
        e = { "<cmd>Ex<cr>", "this window" },
        s = { "<cmd>Sex<cr>", "horizontal split" },
        v = { "<cmd>Vex<cr>", "vertical split" },
   },
   -- FILES
   f = {
        name = "+files",
        a = { "<C-^>", "alternate" },
        f = { builtin.find_files, "find" },
        g = { builtin.live_grep, "grep" },
        b = { builtin.buffers, "buffers" },
        h = { builtin.help_tags, "help" },
        z = { builtin.current_buffer_fuzzy_find, "fuzzy in current" },
        s = { "<cmd>so %<cr>", "source this" },
   },
   -- PACKER
   p = {
        name = "+packer",
        s = { "<cmd>PackerSync<cr>", "sync" },
        t = { "<cmd>PackerStatus<cr>", "status" },
   },
   -- CHADTREE
   t = {
        name = "+tree",
        t = { "<cmd>CHADopen<cr>", "status" },
   },
   -- WINDOWS
   w = {
        name = "+windows",
        h = { "<C-W>h", "window-left" },
        j = { "<C-W>j", "window-below" },
        k = { "<C-W>k", "window-up" },
        l = { "<C-W>l", "window-right" },
        o = { "<C-W>o", "window-only" },
        ["="] = { "<C-W>=", "balance-windows" },
   },
   -- YANK
   y = {
        name = "+yank",
        y = { "\"_y", "yank to +" },
        Y = { "\"_Y", "yank to +" },
   },
}, { prefix = "<leader>"})


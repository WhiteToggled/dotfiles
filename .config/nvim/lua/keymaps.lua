vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>cc", "<cmd>let &colorcolumn=80-&colorcolumn<CR>")

vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

vim.keymap.set('n', '<A-z>', '<cmd>set wrap!<CR>')

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

vim.keymap.set("n", "<leader>]", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>[", "<cmd>split<CR>")

vim.keymap.set("n", "<C-p>", ":Neotree toggle<CR>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})

vim.keymap.set("n", "e", "<cmd>ene<CR>")

vim.keymap.set("n", "<leader>t", "<cmd>terminal<CR>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<C-S-Left>", "<C-w>>")
vim.keymap.set("n", "<C-S-Right>", "<C-w><")
vim.keymap.set("n", "<C-S-Down>", "<C-w>+")
vim.keymap.set("n", "<C-S-Up>", "<C-w>-")

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<Tab>', ':bnext<CR>', opts)
map('n', '<S-Tab>', ':bprevious<CR>', opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'gr', vim.lsp.buf.references, opts)
map('n', 'K', vim.lsp.buf.hover, opts)

map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')
map('n', '<leader>e', vim.diagnostic.open_float)

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', "<C-d>", "<C-d>zz")
map('n', "<C-u>", "<C-u>zz")
map('n', "n", "nzzzv")
map('n', "N", "Nzzzv")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("x", "<leader>P", "\"_dP")
map("n", "<leader>y", "\"+y")
map("v", "<leader>y", "\"+y")
map("n", "<leader>Y", "\"+Y")
map("i", "<C-c>", "<Esc>")

map("n", "<leader>p", function()
  vim.cmd("!prettier --write " .. vim.fn.expand("%"))
  vim.cmd("e!")
end, { desc = "Format current file with Prettier" })

vim.api.nvim_create_user_command("RC", "luafile $MYVIMRC", {})


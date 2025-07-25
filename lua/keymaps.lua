local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true, desc = "Go to next buffer" })
map('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true, desc = "Go to previous buffer" })
map('n', 'gi', vim.lsp.buf.implementation, { noremap = true, silent = true, desc = "Go to implementation" })
map('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to definition" })
map('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true, desc = "Show references" })
map('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true, desc = "Show hover information" })

map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = "Find files" })
map('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = "Live grep search" })
map('n', '<leader>fb', ':Telescope buffers<CR>', { desc = "Find buffers" })
map('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = "Search help tags" })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open diagnostic float" })

map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Clear search highlighting" })

map('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle file tree" })
map('n', "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
map('n', "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
map('n', "n", "nzzzv", { desc = "Next search result and center" })
map('n', "N", "Nzzzv", { desc = "Previous search result and center" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })
map("x", "<leader>P", "\"_dP", { desc = "Paste without overwriting register" })
map("n", "<leader>y", "\"+y", { desc = "Yank to system clipboard" })
map("v", "<leader>y", "\"+y", { desc = "Yank to system clipboard" })
map("n", "<leader>Y", "\"+Y", { desc = "Yank line to system clipboard" })
map("n", "<leader>ya", "ggVG\"+y", { desc = "Yank all file content to clipboard" })
map("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })

map("n", "<leader>p", function()
  vim.cmd("!prettier --write " .. vim.fn.expand("%"))
  vim.cmd("e!")
end, { desc = "Format current file with Prettier" })

vim.api.nvim_create_user_command("RC", "luafile $MYVIMRC", {})


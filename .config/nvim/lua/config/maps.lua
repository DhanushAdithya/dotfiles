vim.keymap.set('n', '<space>h', ':set rnu!<CR>', { silent = true })

vim.keymap.set('n', '<Up>', ':resize +2<CR>', { silent = true })
vim.keymap.set('n', '<Down>', ':resize -2<CR>', { silent = true })
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>', { silent = true })
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>', { silent = true })

vim.keymap.set('n', 'J', 'mzJ`z', {})

-- vim.keymap.set('i', '(', '()<Left>', {})
-- vim.keymap.set('i', '{', '{}<Left>', {})
-- vim.keymap.set('i', '[', '[]<Left>', {})
-- vim.keymap.set('i', '"', '""<Left>', {})
-- vim.keymap.set('i', '\'', '\'\'<Left>', {})

vim.keymap.set("n", "K", "<nop>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set('n', '<esc><esc>', ':nohl<CR>', { silent = true })

vim.keymap.set('n', '<Leader>v', ':vsp<CR>', { silent = true })
vim.keymap.set('n', '<Leader>h', ':sp<CR>', { silent = true })

vim.keymap.set('n', '<Leader>o', '<C-w>o', {})

vim.keymap.set('x', 'K', ":move '<-2<CR>gv=gv", {})
vim.keymap.set('x', 'J', ":move '>+1<CR>gv=gv", {})

vim.keymap.set('n', '<leader>af', 'gg<S-v><S-g>=', {})

vim.keymap.set('n', '<C-_>', ':CommentToggle<CR>', { silent = true })
vim.keymap.set('v', '<C-_>', ':CommentToggle<CR>', { silent = true })

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})

vim.keymap.set('x', '<space>p', '"_dP', {})

vim.keymap.set('n', '<space>y', '"+y', {})
vim.keymap.set('v', '<space>y', '"+y', {})
vim.keymap.set('n', '<space>Y', '"+Y', {})

vim.keymap.set('n', '<C-p>', '"+pgv=', {})

vim.keymap.set('n', '<space>d', '"_d', {})
vim.keymap.set('v', '<space>d', '"_d', {})

-- " Telescope
vim.keymap.set('n', '<Leader>ff',
	':Telescope find_files sorting_strategy=ascending layout_config={"prompt_position":"top"}<CR>', { silent = true })
vim.keymap.set('n', '<Leader>ov', ':Telescope find_files sorting_strategy=ascending layout_config={"prompt_position":"top"} cwd=~/.config/nvim/<CR>', { silent = true })

vim.keymap.set('n', '<Tab>', 'gt<CR>', {})
vim.keymap.set('n', '<S-Tab>', 'gT<CR>', {})
vim.keymap.set('n', '<A-a>', '<cmd>tabnew<CR>', {})

-- " Git maps
-- nmap <space>gh :diffget //3<CR>
-- nmap <space>gu :diffget //2<CR>
-- nmap <space>gs :G<CR>

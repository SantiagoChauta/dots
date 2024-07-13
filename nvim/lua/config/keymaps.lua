-- Position cursor at the middle of the screen after scrollling half page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Map Ctrl+c to escape from other modes
vim.keymap.set({ "i", "v", "n" }, "<C-c>", [[<C-\><C-n>]])

-- Required

local harpoon = require("harpoon")
harpoon:setup()

-- OIl
vim.keymap.set("n", "-", "<CMD>Oil<Cr>", { desc = "Open parent directory" })

-- Delete all buffers but the current one
vim.keymap.set(
	"n",
	"<leader>bq",
	'<Esc>:%bdelete|edit #|normal`"<Return>',
	{ desc = "Delete other buffers but the current one" }
)

-- Harpoon 2
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():append()
end, { desc = "add a harpoon mark" })

vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-M-h>", function()
	harpoon:list():select(1)
end)

vim.keymap.set("n", "<C-M-j>", function()
	harpoon:list():select(2)
end)

vim.keymap.set("n", "<C-M-k>", function()
	harpoon:list():select(3)
end)

vim.keymap.set("n", "<C-M-l>", function()
	harpoon:list():select(4)
end)

-- Disable key mappings in normal mode
vim.api.nvim_set_keymap("n", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in visual block mode
vim.api.nvim_set_keymap("x", "<A-j>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", "<Nop>", { noremap = true, silent = true })

-- easy way to save
vim.keymap.set({ "n", "i" }, "<C-s>", vim.cmd.write)

-- move many lines in the buffer at same time
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

--Move in insert mode
vim.keymap.set("i", "<A-l>", "<Right>")
vim.keymap.set("i", "<A-h>", "<Left>")
vim.keymap.set("i", "<A-j>", "<Down>")
vim.keymap.set("i", "<A-k>", "<Up>")

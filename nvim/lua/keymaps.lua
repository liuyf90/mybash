-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
--缓冲区导航映射
map("n", "[b", ":bprevious<CR>", { silent = true })
map("n", "]b", ":bnext<CR>", { silent = true })
map("n", "[B", ":bfirst<CR>", { silent = true })
map("n", "]B", ":blast<CR>", { silent = true })


--窗口方向
map("n", "gl", "<C-w>l", { silent = true })
map("n", "gh", "<C-w>h", { silent = true })
map("n", "gj", "<C-w>j", { silent = true })
map("n", "gk", "<C-w>k", { silent = true })
map("n", "<C-W>M", "<C-W>|<C-W>_", { silent = true })
map("n", "<C-W>m", "<C-W>=", {silent = true})


--用方向健调整window大小
map("n", "<Left>", "<C-w><lt>", {silent = true})
map("n", "<Right>", "<C-w>>", {silent = true})
map("n", "<Up>", "<C-w>-", {silent = true})
map("n", "<Down>", "<C-w>+", {silent = true})

--应用前缀对应缓冲区
map("n", "<leader>1", ":1b", {silent = true})
map("n", "<leader>2", ":2b", {silent = true})
map("n", "<leader>3", ":3b", {silent = true})


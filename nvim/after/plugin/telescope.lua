local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fgi', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

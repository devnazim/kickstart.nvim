require('which-key').register {
  ['<leader>p'] = { name = '[P]refix', _ = 'which_key_ignore' }
}

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P] prefix [V] view directory' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")
vim.keymap.set('n', 'J', "mzJ`z")
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = '[P]aste and keep buffer' })

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>sR',
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = '[S]earch and [R]eplace' }
)
vim.keymap.set('n', '<leader>su',
  [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = '[S]earch and line [U]pdate' }
)

-- copy to clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = '[Y] yank to system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = '[Y] yank line to system clipboard' })

return {}

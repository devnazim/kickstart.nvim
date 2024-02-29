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

vim.keymap.set('n', '<leader>gd', [[:Git diff --name-only ]], { desc = '[G]it [D]iff against branch list file names' })
vim.keymap.set('n', '<leader>gD', [[:Gvdiffsplit ]], { desc = '[G]it [D]iff file against branch HEAD' })
vim.keymap.set('n', '<leader>gh', function()
  vim.cmd(
    [[Git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)']])
end, { desc = '[G]it [H]istory graph' })

-- copy to clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = '[Y] yank to system clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = '[Y] yank line to system clipboard' })

return {}

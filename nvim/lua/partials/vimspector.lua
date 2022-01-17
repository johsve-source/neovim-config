local utils = require('partials/utils')

vim.keymap.set('n', '<F1>', '<Plug>VimspectorToggleBreakpoint')
vim.keymap.set('n', '<F2>', '<Plug>VimspectorToggleConditionalBreakpoint')
vim.keymap.set('n', '<F3>', '<Plug>VimspectorAddFunctionBreakpoint')
vim.keymap.set('n', '<F4>', '<Plug>VimspectorRunToCursor')
vim.keymap.set('n', '<F5>', '<Plug>VimspectorContinue')
vim.keymap.set('n', '<Right>', '<Plug>VimspectorStepOver')
vim.keymap.set('n', '<Up>', '<Plug>VimspectorStepOut')
vim.keymap.set('n', '<Down>', '<Plug>VimspectorStepInto')

vim.cmd([[command! VimspectorPause call vimspector#Pause()]])
vim.cmd([[command! VimspectorStop call vimspector#Stop()]])

local completion = {}
local utils = require('partials.utils')
local cmp = require('cmp')
vim.opt.pumheight = 15
vim.opt.completeopt = 'menuone,noselect'

cmp.setup({
  formatting = {
    format = function(entry, vim_item)
      vim_item.menu = ({
        rg = '[Rg]',
        buffer = '[Buffer]',
        nvim_lsp = '[LSP]',
        vsnip = '[Snippet]',
        tags = '[Tag]',
        path = '[Path]',
        orgmode = '[Org]',
        ['vim-dadbod-completion'] = '[DB]',
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = 'copilot', group_index = 1 },
    { name = 'nvim_lsp', group_index = 1 },
    { name = 'vsnip', group_index = 1 },
    { name = 'buffer', group_index = 2 },
    { name = 'tags', keyword_length = 2, group_index = 2 },
    { name = 'rg', keyword_length = 3, group_index = 2 },
    { name = 'path', group_index = 1 },
    { name = 'orgmode', group_index = 1 },
  },
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = function(fallback)
      if vim.fn['vsnip#expandable']() ~= 0 then
        vim.fn.feedkeys(utils.esc('<Plug>(vsnip-expand)'), '')
        return
      end
      return cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace })(fallback)
    end,
    ['<C-Space>'] = cmp.mapping(
      cmp.mapping.complete({
        config = {
          sources = {
            { name = 'copilot' },
            { name = 'nvim_lsp' },
            { name = 'path' },
          },
        },
      }),
      { 'i' }
    ),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if vim.fn['vsnip#jumpable'](1) > 0 then
        vim.fn.feedkeys(utils.esc('<Plug>(vsnip-jump-next)'), '')
      elseif vim.fn['vsnip#expandable']() > 0 then
        vim.fn.feedkeys(utils.esc('<Plug>(vsnip-expand)'), '')
      else
        fallback()
      end
    end, { 'i', 's' }),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if vim.fn['vsnip#jumpable'](-1) == 1 then
        vim.fn.feedkeys(utils.esc('<Plug>(vsnip-jump-prev)'), '')
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  window = {
    documentation = {
      border = 'rounded',
    },
  },
})

local autocomplete_group = vim.api.nvim_create_augroup('vimrc_autocompletion', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'sql', 'mysql', 'plsql' },
  callback = function()
    cmp.setup.buffer({ sources = { { name = 'vim-dadbod-completion', group_index = 1 } } })
  end,
  group = autocomplete_group,
})

vim.opt.wildignore = {
  '*.o',
  '*.obj,*~',
  '*.git*',
  '*.meteor*',
  '*vim/backups*',
  '*sass-cache*',
  '*mypy_cache*',
  '*__pycache__*',
  '*cache*',
  '*logs*',
  '*node_modules*',
  '**/node_modules/**',
  '*DS_Store*',
  '*.gem',
  'log/**',
  'tmp/**',
}

_G.kris.completion = completion

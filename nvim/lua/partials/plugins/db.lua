local db = {
  'tpope/vim-dadbod',
  dependencies = {
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' } },
    { 'kristijanhusak/vim-dadbod-ui', cmd = { 'DBUI', 'DBUIFindBuffer' } },
  },
  cmd = { 'DB', 'DBUI', 'DBUIFindBuffer' },
}
db.init = function()
  vim.g.db_ui_show_help = 0
  vim.g.db_ui_win_position = 'right'
  vim.g.db_ui_use_nerd_fonts = 1

  vim.g.db_ui_save_location = '~/Dropbox/dbui'
  vim.g.db_ui_tmp_query_location = '~/code/queries'

  vim.g.db_ui_hide_schemas = { 'pg_toast_temp.*' }

  return db
end

return db

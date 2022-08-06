local M = {}

function M.toggle()
  local fugitive_buf_no = vim.fn.bufnr('^fugitive:')
  local buf_win_id = vim.fn.bufwinid(fugitive_buf_no)
  if fugitive_buf_no >= 0 and buf_win_id >= 0 then
    print('closing fugitive window')
    vim.api.nvim_win_close(buf_win_id, false)
  else
    vim.cmd(":G")
  end
end

return M

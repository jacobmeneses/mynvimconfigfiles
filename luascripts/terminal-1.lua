-- brinca a la siguiente terminal de este grupo de tabs
-- si no hay terminal abierta no pasa nada

initialWindow = vim.api.nvim_get_current_win()
tabpage = vim.api.nvim_win_get_tabpage(initialWindow)
windows = vim.api.nvim_tabpage_list_wins({tabpage})
count = 0

-- Itero sobre todas las window
-- y setteo el current con el window que tenga terminal
for index, w in pairs(windows) do
  buffer = vim.api.nvim_win_get_buf(w)
  name = vim.api.nvim_buf_get_name(buffer)

  if string.match(name, 'term://') then
    -- esto hace que el cursor se mueva al window (todo ok)
    vim.api.nvim_set_current_win(w)
    break
  end
  count = count + 1
end



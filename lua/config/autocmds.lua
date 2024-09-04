-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {
    clear = true,
  }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

--vim.api.nvim_create_autocmd({ 'CursorMoved' }, {
--  desc = 'Re-center the cursor.',
--  callback = function()
--    if vim.bo.buftype ~= '' then
--      return
--    end
--
--    local windowLines = vim.api.nvim_win_get_height(0)
--    local currLine = vim.fn.line '.'
--    local lastLine = vim.fn.line '$'
--
--    -- to handle a file smaller than window
--    local bottom = 0
--    if windowLines > lastLine then
--      bottom = windowLines
--    else
--      bottom = lastLine
--    end
--
--    local marginBottom = currLine + vim.o.scrolloff - bottom
--    if marginBottom == 0 then
--      vim.api.nvim_input 'zb' -- align cursor with bottom of file
--    elseif marginBottom > 0 then
--      vim.api.nvim_input 'zb' -- align cursor with bottom of file
--      vim.api.nvim_input(marginBottom .. '<C-E>') -- scroll down
--    end
--  end,
--})

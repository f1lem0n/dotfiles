-- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
local A = vim.api

A.nvim_create_autocmd("FileType", {
    pattern = "zsh",
    callback = function()
        -- let treesitter use bash highlight for zsh files as well
        require("nvim-treesitter.highlight").attach(0, "bash")
    end,
})

-- Focus on main window when exiting terminal
A.nvim_create_autocmd("TermClose", {
    callback = function()
        A.nvim_command("wincmd p")
    end
})

-- Remove useless stuff from the terminal window and enter INSERT mode
A.nvim_create_autocmd('TermOpen', {
    callback = function(data)
        A.nvim_command("$")
        if not string.find(vim.bo[data.buf].filetype, '^[F][T]erm') then
            A.nvim_set_option_value('number', false, { scope = 'local' })
            A.nvim_set_option_value('relativenumber', false, { scope = 'local' })
            A.nvim_set_option_value('signcolumn', 'no', { scope = 'local' })
            -- A.nvim_command('startinsert')
        end
    end,
})

-- Jump to the last place in the file before exiting
A.nvim_create_autocmd('BufReadPost', {
    callback = function(data)
        local last_pos = A.nvim_buf_get_mark(data.buf, '"')
        if last_pos[1] > 0 and last_pos[1] <= A.nvim_buf_line_count(data.buf) then
            A.nvim_win_set_cursor(0, last_pos)
        end
    end,
})

-- Close tree as a last buffer
A.nvim_create_autocmd("BufEnter", {
    pattern = "NvimTree_*",
    callback = function()
        local layout = vim.api.nvim_call_function("winlayout", {})
        if layout[1] == "leaf" and
            vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and
            layout[3] == nil then vim.cmd("confirm quit") end
    end
})

-- Remove trailing whitespaces on write
vim.cmd [[ autocmd BufWritePre * %s/\s\+$//e ]]

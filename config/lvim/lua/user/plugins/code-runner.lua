require('code_runner').setup({
    mode = "float",
    float = {
        -- Key that close the code_runner floating window
        close_key = '<esc>',
        -- Window border (see ':h nvim_open_win')
        border = "rounded",
        -- Num from `0 - 1` for measurements
        height = 0.2,
        width = 0.8,
        x = 0.5,
        y = 0.9,
    },
    -- put here the commands by filetype
    filetype = {
        python = "python3 -u",
        tex = "latexmk -pdf -time -shell-escape",
        sh = "bash",
    },
})

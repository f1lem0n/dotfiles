require('code_runner').setup({
    mode = "term",
    focus = true,
    filetype = {
        python = "python3 -u",
        tex = "latexmk -pdf -time -shell-escape",
        sh = "bash",
    },
})

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
    {
        command = "proselint",
        args = { "--json" },
        filetypes = { "markdown", "tex" },
    },
}

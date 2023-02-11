local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "autopep8",
    },
    {
        command = "isort",
    },
    {
        command = "shfmt",
    }
}

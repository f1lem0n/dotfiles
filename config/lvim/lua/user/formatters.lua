local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "blue",
    },
    {
        command = "isort",
    },
    {
        command = "shfmt",
    }
}

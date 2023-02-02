--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]

-- vim options
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = false
vim.opt.completeopt = "menuone,noselect"
vim.opt.shell = "/bin/bash"
vim.api.nvim_command("set formatoptions-=cro")

-- general
lvim.log.level = "info"
lvim.format_on_save = {
    enabled = true,
    timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = ";"

-- ctrl-s save
lvim.keys.normal_mode["<c-s>"] = ":w<cr>"

-- close windows except current (if editor)
lvim.keys.normal_mode["<esc><esc>"] = ":w<cr><c-w>o"

-- run code
lvim.keys.normal_mode["<F10>"] = ":w<cr>:RunCode<cr>"
lvim.keys.normal_mode["<F9>"] = ":w<cr>:RunFile<cr>"
lvim.keys.normal_mode["<F8>"] = ":w<cr>:RunProject<cr>"
lvim.keys.normal_mode["<leader>xc"] = ":w<cr>:RunCode<cr>"
lvim.keys.normal_mode["<leader>xf"] = ":w<cr>:RunFile<cr>"
lvim.keys.normal_mode["<leader>xp"] = ":w<cr>:RunProject<cr>"

-- move between buffers
lvim.keys.normal_mode["L"] = ":BufferLineCycleNext<cr>"
lvim.keys.normal_mode["H"] = ":BufferLineCyclePrev<cr>"
lvim.keys.normal_mode["W"] = ":BufferKill<cr>"

-- jumping to the next <>
lvim.keys.insert_mode["<leader>j"] = { "<esc>/<><cr>xs" }
lvim.keys.normal_mode["<leader>j"] = { "/<><cr>xs" }

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<cr>", "Projects" }
lvim.builtin.which_key.mappings["xf"] = { "<cmd>w|RunFile<cr>", "Execute File (F9)" }
lvim.builtin.which_key.mappings["xc"] = { "<cmd>w|RunCode<cr>", "Execute Code (F10)" }
lvim.builtin.which_key.mappings["xp"] = { "<cmd>w|RunProject<cr>", "Execute Project (F8)" }
lvim.builtin.which_key.mappings["j"] = { "/<><cr>xs", "Jump to the next <> marker" }

-- -- Change theme settings
-- lvim.colorscheme = "tokyonight-night"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

require("user.actions")
require("user.formatters")
require("user.linters")
require("user.autocmd")

require("user.plugins.load")
require("user.plugins.debugger")
require("user.plugins.code-runner")

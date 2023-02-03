-- ctrl-s save
lvim.keys.normal_mode["<c-s>"] = ":w<cr>"

-- quit vim instantly
lvim.keys.normal_mode["<leader>Q"] = ":qa!<cr>"

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
lvim.keys.normal_mode["<tab>"] = ":BufferLineCycleNext<cr>"
lvim.keys.normal_mode["<s-tab>"] = ":BufferLineCyclePrev<cr>"
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

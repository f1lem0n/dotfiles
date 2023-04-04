local g = vim.g

-- Show UndoTree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

-- Cosmetic changes
g.undotree_WindowLayout = 3
g.undotree_ShortIndicators = true
g.undotree_SplitWidth = 30
g.undotree_DiffpanelHeight = 10
g.undotree_SetFocusWhenToggle = true
g.undotree_HighlightChangedWithSign = true

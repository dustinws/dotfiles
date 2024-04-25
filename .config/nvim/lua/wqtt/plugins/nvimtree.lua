return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        require("nvim-tree").setup({
            view = {
                side = "right",
            },
        })

        local api = require("nvim-tree.api")

        vim.keymap.set("n", "<leader>e", function() api.tree.toggle() end, { desc = "Toggle the file explorer" })
    end
}

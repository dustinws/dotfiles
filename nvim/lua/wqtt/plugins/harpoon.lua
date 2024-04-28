return {
    "ThePrimeagen/harpoon",
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", function() mark.add_file() end, { desc = "Add the current file to harpoon" })
        vim.keymap.set("n", "<leader>h", function() ui.toggle_quick_menu() end, { desc = "Show the harpoon quick menu" })
    end
}

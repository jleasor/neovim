return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- patched fonts support
    "lewis6991/gitsigns.nvim"      -- display git status
  },
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    local barbar = require("barbar")

    barbar.setup({
      clickable = true, -- Enables/disables clickable tabs
      tabpages = false, -- Enable/disables current/total tabpages indicator (top right corner)
      insert_at_end = true,
      icons = {
        button = "",
        buffer_index = true,
        filetype = { enabled = true },
        visible = { modified = { buffer_number = false } },
        gitsigns = {
          added = { enabled = true, icon = "+" },
          changed = { enabled = true, icon = "~" },
          deleted = { enabled = true, icon = "-" }
        }
      }
    })

    local keymap = vim.keymap

    -- Move to previous/next
    keymap.set("n", "<leader>t,", "<cmd>BufferPrevious<cr>", { desc = "Goto previous tab" })
    keymap.set("n", "<leader>t.", "<cmd>BufferNext<cr>", { desc = "Goto next tab" })
    -- Re-order to previous/next
    keymap.set("n", "<leader>t<", "<cmd>BufferMovePrevious<cr>", { desc = "Move tab to previous" })
    keymap.set("n", "<leader>t>", "<cmd>BufferMoveNext<cr>", { desc = "Move tab to next" })
    -- Goto buffer in position...
    keymap.set("n", "<leader>t1", "<cmd>BufferGoto 1<cr>", { desc = "Goto tab 1" })
    keymap.set("n", "<leader>t2", "<cmd>BufferGoto 2<cr>", { desc = "Goto tab 2" })
    keymap.set("n", "<leader>t3", "<cmd>BufferGoto 3<cr>", { desc = "Goto tab 3" })
    keymap.set("n", "<leader>t4", "<cmd>BufferGoto 4<cr>", { desc = "Goto tab 4" })
    keymap.set("n", "<leader>t5", "<cmd>BufferGoto 5<cr>", { desc = "Goto tab 5" })
    keymap.set("n", "<leader>t6", "<cmd>BufferGoto 6<cr>", { desc = "Goto tab 6" })
    keymap.set("n", "<leader>t7", "<cmd>BufferGoto 7<cr>", { desc = "Goto tab 7" })
    keymap.set("n", "<leader>t8", "<cmd>BufferGoto 8<cr>", { desc = "Goto tab 8" })
    keymap.set("n", "<leader>t9", "<cmd>BufferGoto 9<cr>", { desc = "Goto tab 9" })
    keymap.set("n", "<leader>t0", "<cmd>BufferLast<cr>", { desc = "Goto last tab" })

    -- Pin/unpin buffer
    keymap.set("n", "<leader>tp", "<cmd>BufferPin<cr>", { desc = "Pin tab" })
    -- Close buffer
    keymap.set("n", "<leader>tx", "<cmd>BufferClose<cr>", { desc = "Close tab" })
    keymap.set("n", "<leader>ta", "<cmd>BufferCloseAllButCurrent<cr>", { desc = "Close all but current tab" })
  end,
}

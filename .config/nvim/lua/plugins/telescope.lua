return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local find_files_with_hidden = function()
        local action_state = require("telescope.actions.state")
        local line = action_state.get_current_line()
        LazyVim.pick("find_files", { hidden = true, default_text = line })()
      end

      -- rebind <c-h> to find with hidden files
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        mappings = { n = { H = find_files_with_hidden }, i = { ["<c-h>"] = find_files_with_hidden } },
      })
    end,
  },
}

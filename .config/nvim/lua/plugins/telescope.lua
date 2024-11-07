return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local find_files_with_hidden = function()
        local action_state = require("telescope.actions.state")
        local line = action_state.get_current_line()
        LazyVim.pick("find_files", { hidden = true, default_text = line })()
      end
      local find_files_no_ignore = function()
        local action_state = require("telescope.actions.state")
        local line = action_state.get_current_line()
        LazyVim.pick("find_files", { no_ignore = true, default_text = line })()
      end

      -- rebind <c-h> to find with hidden files and <c-i> to find without ignore filtering
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        mappings = {
          n = {
            ["<c-h>"] = find_files_with_hidden,
            ["<c-i>"] = find_files_no_ignore,
          },
          i = {
            ["<c-h>"] = find_files_with_hidden,
            ["<c-i>"] = find_files_no_ignore,
          },
        },
      })
    end,
  },
}

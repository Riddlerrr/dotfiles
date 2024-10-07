return {
  {
    "neovim/nvim-lspconfig",
    servers = {
      ruby_lsp_asdf = {
        mason = false,
        cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
      },
      rubocop_bundle = {
        mason = false,
        cmd = { "bundle exec rubocop" },
      },
      standardrb_bundle = {
        mason = false,
        cmd = { "bundle exec standard" },
      },
    },
  },
}

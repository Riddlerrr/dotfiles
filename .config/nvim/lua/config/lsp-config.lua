return {
  {
    "neovim/nvim-lspconfig",
    servers = {
      ruby_lsp = {
        mason = false,
        cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
      },
      rubocop_bundle = {
        mason = false,
        cmd = { "bundle exec rubocop" },
      },
    },
  },
}

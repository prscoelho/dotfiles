return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ocamllsp = {
          -- installed with opam
          mason = false,
        },
        rust_analyzer = {
          -- installed with rustup
          mason = false,
        },
      },
    },
  },
}

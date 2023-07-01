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
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
            },
          },
          -- installed with rustup
          mason = false,
        },
      },
    },
  },
}

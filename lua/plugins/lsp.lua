return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {},
        yamlls = {
          settings = {
            yaml = {
              customTags = {
                "!And",
                "!Base64",
                "!Cidr",
                "!Condition",
                "!Equals",
                "!FindInMap",
                "!GetAtt",
                "!GetAZs",
                "!If",
                "!ImportValue",
                "!Join",
                "!Not",
                "!Or",
                "!Ref",
                "!Select",
                "!Split",
                "!Sub",
                "!Transform",
              },
            },
          },
        },
      },
    },
  },
}

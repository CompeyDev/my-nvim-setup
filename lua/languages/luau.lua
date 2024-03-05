return {
  "lopi-py/luau-lsp.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    require("luau-lsp").setup {
      fflags = {
        sync = true, -- sync currently enabled fflags with roblox's published fflags
        override = {
          DebugLuauDeferredConstraintResolution = true,
        },
      },

      server = {
        settings = {
          -- https://github.com/folke/neoconf.nvim/blob/main/schemas/luau_lsp.json
          ["luau-lsp"] = {
            require = {
              mode = "relativeToFile",
              directoryAliases = { ["@lune"] = "~/.lune/.typedefs/0.8.0/" },
            },
            completion = {
              imports = {
                enabled = true, -- enable auto imports
              },
            },
          },
        },
      },
      types = {
        roblox = false,
      },
    }
  end,
}

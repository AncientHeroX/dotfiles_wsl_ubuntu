local mason = require('mason-lspconfig')
mason.setup({
    ensure_installed = {"jdtls", "bashls", "clangd"}
})
mason.setup_handlers({
    function(server_name)
        if server_name ~= 'jdtls' then
            require("lspconfig")[server_name].setup({})
        end
    end,
     -- Custom config for pyright
  ["pyright"] = function()
    require("lspconfig").pyright.setup({
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "off", -- Or "basic"
          },
        },
      },
    })
  end,
})

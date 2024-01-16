return{
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    --Opcional para trabajar con lua
    "folke/neodev.nvim",
  },
  config = function()
    ---Keybindings de lsp
    local on_attach = function(_, bufnr)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr})
    end
    require("neodev").setup()
    require("lspconfig").lua_ls.setup({on_attach = on_attach})
    require("lspconfig").clangd.setup({on_attach = on_attach})
  end
}

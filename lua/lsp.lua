require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = { 'pyright',  'clangd' },
})

local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- pyright lsp config
lspconfig.pyright.setup({
  on_attach = on_attach
})

require("lspconfig").clangd.setup({})
-- clangd lsp config with clangd_extensions
-- require("clangd_extensions").setup({
--   server = {
--     cmd = {
--       "clangd",
--       "--background-index",
--       "--pch-storage=memory",
--       "--clang-tidy",
--       "--completion-style=detailed",
--     },
--     init_options = {
--       clangdFileStatus = true,
--       usePlaceholders = true,
--       completeUnimported = true,
--       semanticHighlighting = true,
--     },
--   },
-- })

-- lua lsp config
lspconfig.lua_ls.setup({
  on_attach = on_attach 
})

lspconfig.cmake.setup({
  on_attach = on_attach
})

lspconfig.jsonls.setup({
  on_attach = on_attach
})

lspconfig.bashls.setup({
  on_attach = on_attach
})


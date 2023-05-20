local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), "p:h:t")
local config = {
  cmd = {
    --
    "java", -- Or the absolute path '/path/to/java11_or_newer/bin/java'
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.level=ALL",
    "-noverify",
    "-Xms1g",
    "-jar",
    "/home/americo/Downloads/Library/Java/jdt-language-server-1.9.0-202203031534/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
    "-configuration",
    "/home/americo/Downloads/Library/Java/jdt-language-server-1.9.0-202203031534/config_linux",
    "-data",
    vim.fn.expand("~/.cache/jdtls-workspace") .. workspace_dir,
  },
  root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
  capabilities = capabilities,
}
-- require("lspconfig").jdtls.setup(config)
require("jdtls").start_or_attach(config)
-- -- Mappings.
-- -- See `:help vim.lsp.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<S-k>", vim.lsp.buf.signature_help, opts)
vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

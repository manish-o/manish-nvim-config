local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

vim.g.LanguageClient_serverCommands = {
  cpp = { "clangd", "--header-insertion=never", "-I/D:/c++ tools/w64devkit/x86_64-w64-mingw32/includee" }
}


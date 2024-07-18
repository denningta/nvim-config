local util = require("lspconfig.util")

print("Load Langium LSP")

return {
  default_config = {
    cmd = { "langium-lsp", "--stdio" },
    filetypes = { "langium" },
    root_dir = util.root_pattern("*.langium"),
  },
  docs = {
    description = [[
    test documentation
    ]],
  },
}

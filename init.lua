-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").langium.setup({})
require("notify").setup({
  background_colour = "#000000",
  fps = 30,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = "",
  },
  level = 2,
  minimum_width = 50,
  render = "default",
  stages = "fade_in_slide_out",
  timeout = 5000,
  top_down = true,
})

require("telescope").load_extension("notify")

require("luasnip.loaders.from_vscode").lazy_load()

-- Custom Filetype auto detection
vim.api.nvim_create_autocmd({ "BufEnter", "BufNewFile" }, {
  pattern = "*.langium",
  command = "set filetype=langium",
})

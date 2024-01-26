local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/"
local codelldb_path = extension_path .. "adapter\\codelldb.exe"
local liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"

local cfg = require "rustaceanvim.config"

local options = {
  tools = {},
  server = {
    on_attach = function(client, bufnr)
      vim.lsp.inlay_hint(bufnr, true)
    end,
    -- settings = {
    --   ["rust-analyzer"] = {},
    -- },
  },
  dap = {
    adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
  },
}

return options

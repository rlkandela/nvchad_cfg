local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle Breakpoint",
    },
    ["<leader>div"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Inspect variables in scope",
    },
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
    },
    ["<F9>"] = {
      function()
        require("dap").step_out()
      end,
    },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
      "Run Python tests",
    },
    ["<leader>dpl"] = {
      function()
        require("dap.ext.vscode").load_launchjs(nil, {})
      end,
      "Debug Launch Json",
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "Update all crates",
    },
  },
}

return M

local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require('dap-python').test_method()
      end,
      "Run Python tests"
    },
    ["<F5>"] = {
      function ()
        require('dap').continue()
      end
    },
    ["<F10>"] = {
      function ()
        require('dap').step_over()
      end
    },
    ["<F11>"] = {
      function ()
        require('dap').step_into()
      end
    },
    ["<F9>"] = {
      function ()
        require('dap').step_out()
      end
    },
    ["<leader>dpl"] = {
      function ()
        require('dap.ext.vscode').load_launchjs(nil, {})
      end,
      "Debug Launch Json"
    },
  }
}

return M

local dap, dapui = require("dap"), require("dapui")

-- local icons = require("")
-- dap.setup({
--     active = true,
--     on_config_done = nil,
--     breakpoint = {
--       text = core.icons.ui.Bug,
--       texthl = "DiagnosticSignError",
--       linehl = "",
--       numhl = "",
--     },
--     breakpoint_rejected = {
--       text = core.icons.ui.Bug,
--       texthl = "DiagnosticSignError",
--       linehl = "",
--       numhl = "",
--     },
--     stopped = {
--       text = core.icons.ui.BoldArrowRight,
--       texthl = "DiagnosticSignWarn",
--       linehl = "Visual",
--       numhl = "DiagnosticSignWarn",
--     },
--     log = {
--       level = "info",
--     },
--     ui = {
--       auto_open = true,
--       notify = {
--         threshold = vim.log.levels.INFO,
--       },
--       config = {
--         icons = { expanded = "", collapsed = "", circular = "" },
--         mappings = {
--           -- Use a table to apply multiple mappings
--           expand = { "<CR>", "<2-LeftMouse>" },
--           open = "o",
--           remove = "d",
--           edit = "e",
--           repl = "r",
--           toggle = "t",
--         },
--         -- Use this to override mappings for specific elements
--         element_mappings = {},
--         expand_lines = true,
--         layouts = {
--           {
--             elements = {
--               { id = "scopes", size = 0.33 },
--               { id = "breakpoints", size = 0.17 },
--               { id = "stacks", size = 0.25 },
--               { id = "watches", size = 0.25 },
--             },
--             size = 0.33,
--             position = "right",
--           },
--           {
--             elements = {
--               { id = "repl", size = 0.45 },
--               { id = "console", size = 0.55 },
--             },
--             size = 0.27,
--             position = "bottom",
--           },
--         },
--         controls = {
--           enabled = true,
--           -- Display controls in this element
--           element = "repl",
--           icons = {
--             pause = "",
--             play = "",
--             step_into = "",
--             step_over = "",
--             step_out = "",
--             step_back = "",
--             run_last = "",
--             terminate = "",
--           },
--         },
--         floating = {
--           max_height = 0.9,
--           max_width = 0.5, -- Floats will be treated as percentage of your screen.
--           border = "rounded",
--           mappings = {
--             close = { "q", "<Esc>" },
--           },
--         },
--         windows = { indent = 1 },
--         render = {
--           max_type_length = nil, -- Can be integer or nil.
--           max_value_lines = 100, -- Can be integer or nil.
--         },
--       },
--     },
--   })

dapui.setup({
  controls = {
    element = "repl",
    enabled = true,
    icons = {
      disconnect = "",
      pause = "",
      play = "",
      run_last = "",
      step_back = "",
      step_into = "",
      step_out = "",
      step_over = "",
      terminate = ""
    }
  },
  element_mappings = {},
  expand_lines = true,
  floating = {
    border = "single",
    mappings = {
      close = { "q", "<Esc>" }
    }
  },
  force_buffers = true,
  icons = {
    collapsed = "",
    current_frame = "",
    expanded = ""
  },
  layouts = { {
      elements = { {
          id = "scopes",
          size = 0.25
        }, {
          id = "breakpoints",
          size = 0.25
        }, {
          id = "stacks",
          size = 0.25
        }, {
          id = "watches",
          size = 0.25
        } },
      position = "left",
      size = 40
    }, {
      elements = { {
          id = "repl",
          size = 0.5
        }, {
          id = "console",
          size = 0.5
        } },
      position = "bottom",
      size = 10
    } },
  mappings = {
    edit = "e",
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    repl = "r",
    toggle = "t"
  },
  render = {
    indent = 1,
    max_value_lines = 100
  }
})

-- open/close ui automatically after events
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- configurations
dap.configurations.javascriptreact = { -- change this to javascript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}

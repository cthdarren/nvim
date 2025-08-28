return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end

        dap.configurations.python = {
          {
            type = 'python';
            request = 'launch';
            name = "Launch file";
            program = "${file}";
            pythonPath = function()
              return '/usr/bin/python'
            end;
          },
        }
        dap.adapters.python = {
            type = 'executable';
            command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
            args = { '-m', 'debugpy.adapter' };
          }
    end
}

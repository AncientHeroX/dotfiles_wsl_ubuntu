local dap = require("dap")
local dapui = require("dapui")
local ok = false

dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "--quiet", "--interpreter=dap" }
}
dap.configurations.c = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      -- return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        local binarylocation = os.getenv("BINARY_LOCATION")

        ok = binarylocation ~= nil
        if ok then
            print("Loading ".. vim.fn.getcwd().. "/" .. binarylocation)
            return vim.fn.getcwd() .. '/' .. binarylocation
        else
            vim.api.nvim_err_writeln("! No binary location in env")
        end

    end,
    args = function()
        local debugargs = os.getenv("DEBUG_ARGS")
        if debugargs ~= nil then
            return vim.split(debugargs, " ")
        end
    end,
    cwd = function() return vim.fn.getcwd() end,
    stopAtBeginningOfMainSubprogram = false,
  },
}

dap.listeners.before.attach.dapui_config = function()
    if ok then
        dapui.open()
    end
end
dap.listeners.before.launch.dapui_config = function()
    if ok then
        dapui.open()
    end
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

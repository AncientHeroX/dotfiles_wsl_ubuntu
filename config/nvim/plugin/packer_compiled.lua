-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/eduardglez/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/eduardglez/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/eduardglez/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/eduardglez/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/eduardglez/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["actions-preview.nvim"] = {
    config = { "\27LJ\2\nr\0\0\a\0\b\0\v6\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\1K\0\1\0\17code_actions\20actions-preview\frequire\agf\1\3\0\0\6v\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/actions-preview.nvim",
    url = "https://github.com/aznhe21/actions-preview.nvim"
  },
  ["better-diagnostic-virtual-text"] = {
    config = { "\27LJ\2\nL\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\nsetup#better-diagnostic-virtual-text\frequire\0" },
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/better-diagnostic-virtual-text",
    url = "https://github.com/sontungexpt/better-diagnostic-virtual-text"
  },
  ["bigfile.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/bigfile.nvim",
    url = "https://github.com/LunarVim/bigfile.nvim"
  },
  ["cellular-automaton.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/cellular-automaton.nvim",
    url = "https://github.com/eandrju/cellular-automaton.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["flash.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/flash.nvim",
    url = "https://github.com/folke/flash.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["hlchunk.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\17\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0004\4\3\0005\5\4\0>\5\1\0045\5\5\0>\5\2\4=\4\6\0035\4\a\0=\4\b\3=\3\n\0025\3\v\0005\4\f\0=\4\b\0035\4\r\0=\4\6\3=\3\14\0025\3\15\0=\3\16\2B\0\2\1K\0\1\0\rline_num\1\0\2\nstyle\f#ac92d1\venable\2\vindent\1\2\0\0\f#6e6a86\1\2\0\0\b│\1\0\a\nstyle\0\16ahead_lines\3\5\nchars\0\ndelay\3d\19use_treesitter\2\rpriority\3\n\venable\2\nchunk\1\0\3\vindent\0\nchunk\0\rline_num\0\nchars\1\0\5\16right_arrow\6>\16left_bottom\b╰\rleft_top\b╭\18vertical_line\b│\20horizontal_line\b─\nstyle\1\0\2\14underline\1\afg\f#c21f30\1\0\2\14underline\1\afg\f#ac92d1\1\0\n\rduration\3d\nchars\0\ndelay\3\0\19use_treesitter\2\15textobject\aic\nstyle\0\15error_sign\2\18max_file_size\3��@\rpriority\3\15\venable\2\nsetup\fhlchunk\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/opt/hlchunk.nvim",
    url = "https://github.com/shellRaining/hlchunk.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-tool-installer.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/mason-tool-installer.nvim",
    url = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nio"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-nio",
    url = "https://github.com/nvim-neotest/nvim-nio"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["snacks.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/snacks.nvim",
    url = "https://github.com/folke/snacks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-glsl"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/vim-glsl",
    url = "https://github.com/tikhomirov/vim-glsl"
  },
  ["yazi.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\24\00016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0'\3\4\0'\4\5\0005\5\b\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\15\0'\2\16\0B\0\2\0029\0\17\0005\2\18\0005\3\19\0=\3\20\2B\0\2\0016\0\0\0009\0\21\0)\1\1\0=\1\22\0006\0\0\0009\0\21\0)\1\1\0=\1\23\0K\0\1\0\17loaded_netrw\23loaded_netrwPlugin\6g\fkeymaps\1\0\1\14show_help\t<f8>\1\0\2\25open_for_directories\2\fkeymaps\0\nsetup\tyazi\frequire\1\0\2\tdesc!Resume the last yazi session\fnoremap\2\25<cmd>Yazi toggle<cr>\v<c-up>\1\0\2\tdesc6Open the file manager in nvim's working directory\fnoremap\2\22<cmd>Yazi cwd<cr>\15<leader>cw\1\0\2\tdesc\"Open yazi at the current file\fnoremap\2\6v\1\0\2\tdesc\"Open yazi at the current file\fnoremap\2\18<cmd>Yazi<cr>\14<leader>-\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/yazi.nvim",
    url = "https://github.com/mikavilpas/yazi.nvim"
  },
  ["yuck.vim"] = {
    loaded = true,
    path = "/home/eduardglez/.local/share/nvim/site/pack/packer/start/yuck.vim",
    url = "https://github.com/elkowar/yuck.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: better-diagnostic-virtual-text
time([[Config for better-diagnostic-virtual-text]], true)
try_loadstring("\27LJ\2\nL\0\1\4\0\3\0\0066\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\1K\0\1\0\nsetup#better-diagnostic-virtual-text\frequire\0", "config", "better-diagnostic-virtual-text")
time([[Config for better-diagnostic-virtual-text]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: actions-preview.nvim
time([[Config for actions-preview.nvim]], true)
try_loadstring("\27LJ\2\nr\0\0\a\0\b\0\v6\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\1K\0\1\0\17code_actions\20actions-preview\frequire\agf\1\3\0\0\6v\6n\bset\vkeymap\bvim\0", "config", "actions-preview.nvim")
time([[Config for actions-preview.nvim]], false)
-- Config for: yazi.nvim
time([[Config for yazi.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\24\00016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0'\3\4\0'\4\5\0005\5\b\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\15\0'\2\16\0B\0\2\0029\0\17\0005\2\18\0005\3\19\0=\3\20\2B\0\2\0016\0\0\0009\0\21\0)\1\1\0=\1\22\0006\0\0\0009\0\21\0)\1\1\0=\1\23\0K\0\1\0\17loaded_netrw\23loaded_netrwPlugin\6g\fkeymaps\1\0\1\14show_help\t<f8>\1\0\2\25open_for_directories\2\fkeymaps\0\nsetup\tyazi\frequire\1\0\2\tdesc!Resume the last yazi session\fnoremap\2\25<cmd>Yazi toggle<cr>\v<c-up>\1\0\2\tdesc6Open the file manager in nvim's working directory\fnoremap\2\22<cmd>Yazi cwd<cr>\15<leader>cw\1\0\2\tdesc\"Open yazi at the current file\fnoremap\2\6v\1\0\2\tdesc\"Open yazi at the current file\fnoremap\2\18<cmd>Yazi<cr>\14<leader>-\6n\20nvim_set_keymap\bapi\bvim\0", "config", "yazi.nvim")
time([[Config for yazi.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'hlchunk.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'hlchunk.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

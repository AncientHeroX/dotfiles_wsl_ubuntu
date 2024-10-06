require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'moon',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'moon',
	-- bold_vert_split = false,
	dim_nc_background = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
    enable = {
        terminal = true,
        migrations = true, -- Handle deprecated options automatically
    },

    styles = {
        bold = true,
        italic = true,
    },
	groups = {
		panel = 'surface',
		panel_nc = 'base',
		border = 'highlight_med',
        -- border = "muted",
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',
        todo = "rose",
		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',
        note = "pine",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
	},

	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipes
	highlight_groups = {
		ColorColumn = { bg = 'rose' },

		-- Blend colours against the "base" background
		CursorLine = { bg = 'foam', blend = 10 },
		StatusLine = { fg = 'love', bg = 'love', blend = 5 },

		-- By default each group adds to the existing config.
		-- If you only want to set what is written in this config exactly,
		-- you can set the inherit option:
		Search = { bg = 'gold', inherit = false },
	}
})
-- Set colorscheme after options
vim.cmd('colorscheme rose-pine')

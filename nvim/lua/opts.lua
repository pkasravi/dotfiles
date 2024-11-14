--[[ opts.lua ]]
local opt = vim.opt

-- [[ Context ]]
opt.colorcolumn = '80'           -- str:  Show col for max line length
opt.number = true                -- bool: Show line numbers
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
opt.signcolumn = "yes"           -- str:  Show the sign column

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable
opt.background = "dark"		       -- str: (light/dark) color scheme selection
opt.colorcolumn = 80             -- str: Line of color at char 80

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 2               -- num:  Size of an indent
opt.autoindent = true            -- bool: Copy indent from previous line
opt.softtabstop = 2              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 2                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- [[ Lines ]]
opt.relativenumber = true        -- bool: Line numbers relative to cursor
opt.number = true                -- bool: Show line numbers
opt.wrap = false                 -- bool: Wrap lines automatically
opt.cursorline = true		         -- bool: Highlight the cursor with a horizontal line

-- [[ Mouse ]]
opt.mouse = "a"                  -- str: Use mouse in all modes

-- [[ Clipboard ]]
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

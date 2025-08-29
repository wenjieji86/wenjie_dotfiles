-- [[nvim options]] --
-- options are automatically loaded before lazy.nvim startup
-- default options that are always set:
-- github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- lazyvim auto format
vim.g.autoformat = false

-- snacks animations
-- set to `false` to globally disable all snacks animations
vim.g.snacks_animate = true

-- LazyVim picker to use
-- can be one of: telescope, fzf
-- leave it to 'auto' to automatically use the picker
-- enabled with `:LazyExtras`
vim.g.lazyvim_picker = "auto"

-- LazyVim completion engine to use
-- can be one of: nvim-cmp, blink.cmp
-- leave it to 'auto' to automatically use the completion engine
-- enabled with `:LazyExtras`
vim.g.lazyvim_cmp = "auto"

-- if the completion engine supports the AI source
-- use that instead of inline suggestions
vim.g.ai_cmp = false

-- LazyVim root dir detection
-- each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- optionally setup the terminal to use
-- this sets `vim.o.shell` and does some additional configuration for:
-- * pwsh
-- * powershell
-- LazyVim.terminal.setup('pwsh')

-- set LSP servers to be ignored when used with `util.root.detectors.lsp`
-- for detecting the LSP root
vim.g.root_lsp_ignore = { "copilot" }

-- hide deprecation warnings
vim.g.deprecation_warnings = true

-- show the current document symbols location from Trouble in lualine
-- you can disable this for a buffer by setting `vim.b.trouble_lualine = false`
vim.g.trouble_lualine = true

-- python
vim.g.lazyvim_python_lsp = "pyright"
-- vim.g.lazyvim_python_ruff = "ruff"

local opt = vim.opt

opt.autowrite = false -- auto write
opt.backup = false
opt.breakindent = true -- break indent
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- sync with system clipboard
opt.cmdheight = 2 -- increase command-line screen lines
opt.colorcolumn = { "72", "79" }
-- options for Insert mode completion
-- menuone: use a popup menu to show the possible completions
-- noselect: no menu item is pre-selected and do not insert any text for a match until the user selects a match
-- popup: show extra information about the currently selected completion in a popup window
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 2 -- hide * markup for bold and italic, but not markers with substitutions
opt.confirm = true -- confirm to save changes before exiting modified buffer
opt.cursorline = true -- enable highlighting of the current line
opt.expandtab = true -- use spaces instead of tabs
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.foldlevel = 99
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.jumpoptions = "view"
opt.laststatus = 3 -- global statusline
opt.linebreak = true -- wrap lines at convenient points
opt.list = true -- show whitespace characters
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" } -- string to use in list mode
opt.mouse = "a" -- enable mouse mode
opt.number = true -- print line number
opt.pumblend = 10 -- popup blend
opt.pumheight = 10 -- maximum number of entries in a popup
opt.relativenumber = false -- relative line numbers
opt.ruler = false -- disable the default ruler
opt.scrolloff = 4 -- lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.shiftround = true -- round indent
opt.shiftwidth = 4 -- size of an indent
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.showmode = false -- dont show mode since we have a statusline
opt.sidescrolloff = 8 -- columns of context
opt.signcolumn = "yes" -- always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- put new windows below current
opt.splitkeep = "screen"
opt.splitright = true -- put new windows right of current
opt.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]]
opt.swapfile = false
opt.tabstop = 4 -- number of spaces tabs count for
opt.termguicolors = true -- true color support
opt.timeoutlen = vim.g.vscode and 1000 or 300 -- lower than default (1000) to quickly trigger which-key
opt.undofile = true -- save undo history
opt.undolevels = 10000
opt.updatetime = 200 -- save swap file and trigger CursorHold
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.wildmode = "longest:full,full" -- command-line completion mode
opt.winminwidth = 5 -- minimum window width
opt.wrap = false -- disable line wrap

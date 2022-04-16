local options = {
	cmdheight = 2,
  clipboard = "unnamedplus",
	mouse = "a",
	number= true,
  showtabline = 2,
	tabstop = 2,
  expandtab = true,
  shiftwidth = 2,
  numberwidth = 3,
  scrolloff=9,
  swapfile=false,

  ignorecase=true,
  smartcase=true,
  termguicolors=true,
  timeoutlen=250,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
vim.cmd([[hi Pmenu guibg=#282828]])

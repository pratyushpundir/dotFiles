"Make Cmd+P work as in sublime. Avoid going to Print command in MacVim."
if has("gui_macvim")
	macmenu &File.Print key=<nop>
endif

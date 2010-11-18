set guioptions-=T " hide toolbar

" Change peepopen's keymapping to Cmd+T
if has("gui_macvim")
  macmenu &File.New\ Tab key=<Nop>
  map <D-t> <Plug>PeepOpen
end

set guifont=Inconsolata:h16
set antialias
set lines=40
set columns=84

if has("gui_macvim")
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
  nmap <D-1> 1gt
  nmap <D-2> 2gt
  nmap <D-3> 3gt
  nmap <D-4> 4gt
  nmap <D-5> 5gt
  nmap <D-6> 6gt
  nmap <D-7> 7gt
  nmap <D-8> 8gt
  nmap <D-9> 9gt
  nmap <D-0> :tablast<CR>
endif

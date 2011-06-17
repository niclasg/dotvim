if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version < 508
  command! -nargs=+ HiLink hi link <args>
else
  command! -nargs=+ HiLink hi def link <args>
endif

syn case ignore

" syn match timerepComment "^.*$"
syn match timerepDivider "\(|\|-\)"
syn match timerepDayDate "\(19\|20\)\d\d[- /.]\(0[1-9]\|1[012]\)[- /.]\(0[1-9]\|[12][0-9]\|3[01]\)"
syn match timerepTime "[0-9]\{2\}:[0-9]\{2\}"
syn keyword timerepDayName måndag tisdag onsdag torsdag fredag lördag söndag


syn sync fromstart

"highlighting for Taskpaper groups
HiLink timerepDayName     	Define
HiLink timerepDayDate		Function
HiLink timerepTime			String
HiLink timerepDivider		Comment
" HiLink timerepComment     Comment

let b:current_syntax = "timerep"

delcommand HiLink
" vim: ts=8

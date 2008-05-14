" if background is dark do the dark blue colors
" else do peachpuff colors

if( &bg == "dark" )

	hi Normal		guifg=#c0c0c0 guibg=#000040 ctermfg=gray ctermbg=black
	hi ErrorMsg		guifg=#ffffff guibg=#287eff ctermfg=white ctermbg=lightblue
	hi Visual		guifg=#8080ff guibg=fg gui=reverse ctermfg=lightblue ctermbg=fg cterm=reverse
	hi VisualNOS		guifg=#8080ff guibg=fg gui=reverse,underline	ctermfg=lightblue ctermbg=fg cterm=reverse,underline
	hi Todo			guifg=#d14a14 guibg=#1248d1 ctermfg=red	ctermbg=darkblue
	hi Search		guifg=#90fff0 guibg=#2050d0 ctermfg=white ctermbg=darkblue cterm=underline term=underline
	hi IncSearch		guifg=#b0ffff guibg=#2050d0 ctermfg=darkblue ctermbg=gray
	hi SpecialKey		guifg=cyan ctermfg=darkcyan
	hi Directory		guifg=cyan ctermfg=cyan
	hi Title		guifg=magenta gui=none ctermfg=magenta cterm=bold
	hi WarningMsg		guifg=red ctermfg=red
	hi WildMenu		guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
	hi ModeMsg		guifg=#22cce2 ctermfg=lightblue
	hi MoreMsg		ctermfg=darkgreen ctermfg=darkgreen
	hi Question		guifg=green gui=none ctermfg=green cterm=none
	hi NonText		guifg=#0030ff ctermfg=darkblue
	hi StatusLine		guifg=blue guibg=darkgray gui=none ctermfg=blue ctermbg=gray term=none cterm=none
	hi StatusLineNC		guifg=black guibg=darkgray gui=none ctermfg=black ctermbg=gray term=none cterm=none
	hi VertSplit		guifg=black guibg=darkgray gui=none ctermfg=black ctermbg=gray term=none cterm=none
	hi Folded		guifg=#808080 guibg=#000040 ctermfg=darkgrey ctermbg=black cterm=bold term=bold
	hi FoldColumn		guifg=#808080 guibg=#000040 ctermfg=darkgrey ctermbg=black cterm=bold term=bold
	hi LineNr		guifg=#90f020 ctermfg=green cterm=none
	hi DiffAdd		guibg=darkblue	ctermbg=darkblue term=none cterm=none
	hi DiffChange		guibg=darkmagenta ctermbg=magenta cterm=none
	hi DiffDelete		ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
	hi DiffText		cterm=bold ctermbg=red gui=bold guibg=Red
	hi Cursor		guifg=#000020 guibg=#ffaf38 ctermfg=bg ctermbg=brown
	hi lCursor		guifg=#ffffff guibg=#000000 ctermfg=bg ctermbg=darkgreen
	hi Comment		guifg=#80a0ff ctermfg=darkred
	hi Constant		ctermfg=magenta guifg=#ffa0a0 cterm=none
	hi Special		ctermfg=brown guifg=Orange cterm=none gui=none
	hi Identifier		ctermfg=cyan guifg=#40ffff cterm=none
	hi Statement		ctermfg=yellow cterm=none guifg=#ffff60 gui=none
	hi PreProc		ctermfg=magenta guifg=#ff80ff gui=none cterm=none
	hi type			ctermfg=green guifg=#60ff60 gui=none cterm=none
	hi Underlined		cterm=underline term=underline
	hi Ignore		guifg=bg ctermfg=bg

	hi link 		String	Constant
	hi link 		Character	Constant
	hi link 		Number	Constant
	hi link 		Boolean	Constant
	hi link 		Float		Number
	hi link 		Function	Identifier
	hi link 		Conditional	Statement
	hi link 		Repeat	Statement
	hi link 		Label		Statement
	hi link 		Operator	Statement
	hi link 		Keyword	Statement
	hi link 		Exception	Statement
	hi link 		Include	PreProc
	hi link 		Define	PreProc
	hi link 		Macro		PreProc
	hi link 		PreCondit	PreProc
	hi link 		StorageClass	Type
	hi link 		Structure	Type
	hi link 		Typedef	Type
	hi link 		SpecialChar	Special
	hi link 		Delimiter	Special
	hi link 		SpecialComment Special
	hi link 		Debug		Special

else "light background

	hi Comment 		ctermfg=darkblue guifg=Red
	hi Normal 		guifg=black guibg=white ctermfg=black ctermbg=NONE
	hi Constant 		ctermfg=darkred guifg=red
	hi Special 		ctermfg=darkMagenta guifg=Magenta
	hi Identifier 		ctermfg=darkcyan guifg=cyan
	hi Statement 		ctermfg=darkyellow guifg=yellow
	hi PreProc 		ctermfg=darkMagenta guifg=Purple
	hi Type 		ctermfg=darkBlue gui=NONE guifg=Blue
	hi Visual 		term=reverse ctermfg=black ctermbg=white guifg=black guibg=white
	hi Search 		term=reverse ctermfg=Black ctermbg=Cyan gui=NONE guifg=Black guibg=Cyan
	hi Tag 			term=bold ctermfg=DarkGreen guifg=DarkGreen
	hi Error 		term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
	hi Todo 		term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
	hi StatusLine 		term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=NONE guifg=Yellow guibg=DarkGray

	hi! link 		MoreMsg Comment
	hi! link 		ErrorMsg Visual
	hi! link 		WarningMsg ErrorMsg
	hi! link 		Question Comment
	hi link 		String	Constant
	hi link 		Character Constant
	hi link 		Number	Constant
	hi link 		Boolean	Constant
	hi link 		Float		Number
	hi link 		Function	Identifier
	hi link 		Conditional	Statement
	hi link 		Repeat	Statement
	hi link 		Label		Statement
	hi link 		Operator	Statement
	hi link 		Keyword	Statement
	hi link 		Exception	Statement
	hi link 		Include	PreProc
	hi link 		Define	PreProc
	hi link 		Macro		PreProc
	hi link 		PreCondit	PreProc
	hi link 		StorageClass	Type
	hi link 		Structure	Type
	hi link 		Typedef	Type
	hi link 		SpecialChar	Special
	hi link 		Delimiter	Special
	hi link 		SpecialComment Special
	hi link 		Debug Special

endif

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "hjs"

hi Normal          guifg=#f6f3e8 guibg=#1c1c1c ctermfg=255 ctermbg=234

"" Colours with a charcoal background (used for the normal text).
hi Orange          guifg=#eea040 guibg=#1c1c1c ctermfg=172 ctermbg=234
hi Red             guifg=#dd3333 guibg=#1c1c1c ctermfg=160 ctermbg=234
hi Pink            guifg=#ff66ff guibg=#1c1c1c ctermfg=201 ctermbg=234
hi PinkBold        guifg=#ff66ff guibg=#1c1c1c ctermfg=201 ctermbg=234 gui=BOLD
hi LightGreen      guifg=#a0ee40 guibg=#1c1c1c ctermfg=83  ctermbg=234
hi LightGreenBold  guifg=#a0ee40 guibg=#1c1c1c ctermfg=83  ctermbg=234 gui=BOLD
hi Green           guifg=#a8ff60 guibg=#1c1c1c ctermfg=10  ctermbg=234
hi Cyan            guifg=#afffff guibg=#1c1c1c ctermfg=159 ctermbg=234
hi CyanBold        guifg=#afffff guibg=#1c1c1c ctermfg=159 ctermbg=234 gui=BOLD
hi Grey            guifg=#626262 guibg=#1c1c1c ctermfg=241 ctermbg=234
hi GreyItalic      guifg=#626262 guibg=#1c1c1c ctermfg=241 ctermbg=234 gui=ITALIC
hi Yellow          guifg=#ffff80 guibg=#1c1c1c ctermfg=191 ctermbg=234
hi Salmon          guifg=#FF8787 guibg=#1c1c1c ctermfg=210 ctermbg=234
hi Ochre           guifg=#FFD2A7 guibg=#1c1c1c ctermfg=186 ctermbg=234
hi OchreBold       guifg=#FFD2A7 guibg=#1c1c1c ctermfg=186 ctermbg=234 gui=BOLD
hi Blue            guifg=#9090FF guibg=#1c1c1c ctermfg=12  ctermbg=234
hi Purple          guifg=#9932CC guibg=#1c1c1c ctermfg=92  ctermbg=234
hi Teal            guifg=#00A0A0 guibg=#1c1c1c ctermfg=37  ctermbg=234
hi Invisible       guifg=#1c1c1c guibg=#1c1c1c ctermfg=234 ctermbg=234
hi CherryBG        guifg=#f6f3e8 guibg=#ff005f ctermfg=241 ctermbg=197

" Colours with a light grey background (used for the status line)
hi BackgroundSL    guifg=NONE    guibg=#3a3a3a ctermfg=NONE ctermbg=237
hi OrangeSL        guifg=#eea040 guibg=#3a3a3a ctermfg=172  ctermbg=237
hi RedSL           guifg=#dd3333 guibg=#3a3a3a ctermfg=160  ctermbg=237
hi PinkSL          guifg=#ff66ff guibg=#3a3a3a ctermfg=201  ctermbg=237
hi PinkBoldSL      guifg=#ff66ff guibg=#3a3a3a ctermfg=201  ctermbg=237 gui=BOLD
hi LightGreenSL    guifg=#a0ee40 guibg=#3a3a3a ctermfg=83   ctermbg=237
hi CyanSL          guifg=#afffff guibg=#3a3a3a ctermfg=159  ctermbg=237

hi StatusLine       guibg=#3a3a3a gui=italic    ctermfg=237 ctermbg=237  cterm=italic
hi StatusLineNC     guibg=#3a3a3a gui=NONE      ctermbg=237  cterm=NONE
hi VertSplit        guifg=#3a3a3a guibg=#3a3a3a ctermfg=16  ctermbg=16
hi Cursor           guifg=#000000 guibg=#ffffff ctermfg=0   ctermbg=15
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=NONE   ctermbg=18     cterm=NONE
hi ModeMsg          guifg=black       guibg=#C6C5FE     gui=BOLD      ctermfg=black  ctermbg=189     cterm=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE    guibg=#262D51   gui=NONE      ctermfg=NONE   ctermbg=17    cterm=NONE
  hi CursorColumn   guifg=NONE    guibg=#1c1c1c   gui=NONE      ctermfg=NONE   ctermbg=16    cterm=NONE
  hi MatchParen     guifg=#eeeeee guibg=#857b6f   gui=BOLD      ctermfg=255    ctermbg=101   cterm=BOLD
  hi Pmenu          guifg=#eeeeee guibg=#444444   gui=NONE      ctermfg=255    ctermbg=59    cterm=NONE
  hi PmenuSel       guifg=#000000 guibg=#cae682   gui=NONE      ctermfg=black  ctermbg=186   cterm=NONE
  hi Search         guifg=NONE    guibg=#2f2f00   gui=underline ctermfg=NONE   ctermbg=236    cterm=underline
endif

hi Error            guifg=NONE        guibg=NONE        gui=undercurl ctermfg=NONE   ctermbg=NONE        cterm=undercurl      guisp=#FF6C60 " undercurl color
hi ErrorMsg         guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=white  ctermbg=203     cterm=BOLD
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=BOLD      ctermfg=white  ctermbg=203     cterm=BOLD

hi! link NonText Grey

hi! link LineNr Teal
hi! link CursorLineNr Teal
hi! link SpecialKey Grey

" Syntax highlighting
hi! link Comment GreyItalic
hi! link String  Green
hi! link Number Pink
hi! link Keyword Yellow
hi! link PreProc Yellow
hi! link Conditional Yellow
hi! link Statement Yellow
hi! link Special Yellow
hi! link Todo       CherryBG
hi! link Constant   Salmon
hi! link Identifier Ochre
hi! link Function   Blue
hi! link Type       Purple
hi! link Delimiter  Teal

hi! link shVariable Cyan
hi! link cppSTLtype Normal

hi! link Operator Normal
hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special
hi! link ColorColumn    BackgroundSL

hi link CtrlPMode1 PinkBoldSL
hi link CtrlPMode2 LightGreenSL
hi! link qfLineNr Ochre

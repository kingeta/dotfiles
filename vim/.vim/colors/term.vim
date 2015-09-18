" Vim color file

set background=light
let g:colors_name="term"

" Code
hi Folded       ctermfg=15    ctermbg=none
hi FoldColumn                ctermbg=none
hi NonText      ctermfg=15
hi SpecialKey   ctermfg=7
hi Statement    ctermfg=3
hi Normal       ctermfg=none

" Spell
hi SpellBad     ctermfg=9    ctermbg=none

" Highlight
hi Search       ctermfg=8   ctermbg=15
hi Visual       ctermfg=6    ctermbg=none cterm=reverse
hi MatchParen   ctermfg=12   ctermbg=none cterm=reverse

" Lines
hi CursorLine   ctermfg=7                 cterm=none
hi CursorLineNr ctermfg=7
hi LineNr       ctermfg=7

" Splits
hi SignColumn                ctermbg=none
hi VertSplit    ctermfg=15                 cterm=none

" Status line / related
hi StatusLine   ctermfg=15    ctermbg=7    cterm=bold
hi StatusLineNC ctermfg=7
hi WildMenu     ctermfg=14   ctermbg=7

" Tabs
hi TabLine      ctermfg=none ctermbg=none cterm=none
hi TabLineFill  ctermfg=none ctermbg=none cterm=none
hi TabLineSel   ctermfg=8   ctermbg=none cterm=none

" Vimdiff
hi DiffAdd      ctermfg=14   ctermbg=none
hi DiffChange   ctermfg=12   ctermbg=none
hi DiffDelete   ctermfg=17   ctermbg=none
hi DiffText     ctermfg=9    ctermbg=none


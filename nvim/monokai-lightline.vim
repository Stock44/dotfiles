" =============================================================================
" Filename: monokai-lightline
" Author: Hiram Muñoz
" License: MIT License
" Last Change: 2022/04/08 
" =============================================================================

" Common colors
let s:fg     = $THEME_FG
let s:bg     = $THEME_BG
let s:fg_d   = $THEME_FG_DARK
let s:blue   = $THEME_BLUE
let s:green  = $THEME_GREEN
let s:purple = $THEME_PURPLE
let s:red    = $THEME_RED
let s:orange = $THEME_ORANGE
let s:yellow = $THEME_YELLOW 

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}


let s:p.normal.left     = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:fg_d ] ]
let s:p.normal.middle   = [ [ s:fg, s:fg_d ] ]
let s:p.inactive.left   = [ [ s:fg_d,  s:bg ], [ s:fg_d, s:bg ] ]
let s:p.inactive.middle = [ [ s:fg_d, s:fg_d ] ]
let s:p.inactive.right  = [ [ s:fg_d, s:bg ], [ s:fg_d, s:bg ] ]
let s:p.insert.left     = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:fg_d ] ]
let s:p.replace.left    = [ [ s:bg, s:red, 'bold' ], [ s:fg, s:fg_d ] ]
let s:p.visual.left     = [ [ s:bg, s:purple, 'bold' ], [ s:fg, s:fg_d ] ]

let s:p.normal.right   = [ [ s:bg, s:blue, 'bold' ], [ s:bg, s:blue, 'bold' ] ]
let s:p.normal.error   = [ [ s:orange,   s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ [ s:bg, s:green, 'bold' ], [ s:bg, s:green, 'bold' ] ]
let s:p.replace.right  = [ [ s:bg, s:red, 'bold' ], [ s:bg, s:red, 'bold' ] ]
let s:p.visual.right   = [ [ s:bg, s:purple, 'bold' ], [ s:bg, s:purple, 'bold' ] ]
let s:p.tabline.left   = [ [ s:fg, s:fg_d ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:purple, 'bold' ] ]
let s:p.tabline.middle = [ [ s:fg, s:fg_d ] ]
let s:p.tabline.right  = [ [ s:bg, s:red, 'bold' ] ]

let g:lightline#colorscheme#monokai_lightline#palette = lightline#colorscheme#fill(s:p)

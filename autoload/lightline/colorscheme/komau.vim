let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }
let s:isDark = (&background == 'dark')

if s:isDark
    let s:p.normal.left   = [[["#d73a49", 235], ["#303030", 167]], [["#F0F0F0", 167], ["#222222", 235]]]
    let s:p.normal.middle = [[["#F0F0F0", 255], ["#181818", 235]]]
    let s:p.normal.right  = [[["#d73a49", 235], ["#303030", 167]], [["#F0F0F0", 167], ["#222222", 235]]]

    let s:p.normal.error   = [[["#F0F0F0", 235], ["#B31D28", 124]]]
    let s:p.normal.warning = [[["#F0F0F0", 235], ["#FED442", 215]]]

    let s:p.inactive.left   = [[["#999999", 235], ["#303030", 167]], [["#F0F0F0", 167], ["#222222", 235]]]
    let s:p.inactive.middle = [[["#F0F0F0", 255], ["#181818", 235]]]
    let s:p.inactive.right  = [[["#999999", 235], ["#303030", 167]], [["#F0F0F0", 167], ["#222222", 235]]]

    let s:p.insert.left   = [[["#22863a", 235], ["#303030", 167]], [["#F0F0F0", 167], ["#222222", 235]]]
    let s:p.insert.middle = [[["#F0F0F0", 255], ["#181818", 235]]]
    let s:p.insert.right  = [[["#22863a", 235], ["#303030", 167]], [["#F0F0F0", 167], ["#222222", 235]]]

    let s:p.replace.left   = [[["#303030", 235], ["#22863a", 167]], [["#F0F0F0", 167], ["#222222", 235]]]
    let s:p.replace.middle = [[["#F0F0F0", 255], ["#181818", 235]]]
    let s:p.replace.right  = [[["#303030", 235], ["#22863a", 167]], [["#F0F0F0", 167], ["#222222", 235]]]

    let s:p.visual.left   = [[["#303030", 235], ["#d73a49", 167]], [["#F0F0F0", 167], ["#222222", 235]]]
    let s:p.visual.middle = [[["#F0F0F0", 255], ["#181818", 235]]]
    let s:p.visual.right  = [[["#303030", 235], ["#d73a49", 167]], [["#F0F0F0", 167], ["#222222", 235]]]

    let s:p.tabline.left   = [[["#f0f0f0", 250], ["#222222", 242]]]
    let s:p.tabline.tabsel = [[["#cccccc", 235], ["#767676", 250]]]
    let s:p.tabline.middle = [[["#f0f0f0", 242], ["#222222", 238]]]
    let s:p.tabline.right  = [[["#f0f0f0", 250], ["#222222", 242]]]
else
    let s:p.normal.left   = [[["#d73a49", 235], ["#303030", 167]], [["#131313", 167], ["#999999", 235]]]
    let s:p.normal.middle = [[["#131313", 255], ["#F5F5F5", 235]]]
    let s:p.normal.right  = [[["#d73a49", 235], ["#303030", 167]], [["#131313", 167], ["#999999", 235]]]

    let s:p.normal.error   = [[["#F0F0F0", 235], ["#B31D28", 124]]]
    let s:p.normal.warning = [[["#F0F0F0", 235], ["#FED442", 215]]]

    let s:p.inactive.left   = [[["#999999", 235], ["#303030", 167]], [["#131313", 167], ["#999999", 235]]]
    let s:p.inactive.middle = [[["#131313", 255], ["#F5F5F5", 235]]]
    let s:p.inactive.right  = [[["#999999", 235], ["#303030", 167]], [["#131313", 167], ["#999999", 235]]]

    let s:p.insert.left   = [[["#22863a", 235], ["#303030", 167]], [["#131313", 167], ["#999999", 235]]]
    let s:p.insert.middle = [[["#131313", 255], ["#F5F5F5", 235]]]
    let s:p.insert.right  = [[["#22863a", 235], ["#303030", 167]], [["#131313", 167], ["#999999", 235]]]

    let s:p.replace.left   = [[["#303030", 235], ["#22863a", 167]], [["#131313", 167], ["#999999", 235]]]
    let s:p.replace.middle = [[["#131313", 255], ["#F5F5F5", 235]]]
    let s:p.replace.right  = [[["#303030", 235], ["#22863a", 167]], [["#131313", 167], ["#999999", 235]]]

    let s:p.visual.left   = [[["#303030", 235], ["#d73a49", 167]], [["#131313", 167], ["#999999", 235]]]
    let s:p.visual.middle = [[["#131313", 255], ["#F5F5F5", 235]]]
    let s:p.visual.right  = [[["#303030", 235], ["#d73a49", 167]], [["#131313", 167], ["#999999", 235]]]

    let s:p.tabline.left   = [[["#f0f0f0", 250], ["#222222", 242]]]
    let s:p.tabline.tabsel = [[["#cccccc", 235], ["#767676", 250]]]
    let s:p.tabline.middle = [[["#f0f0f0", 242], ["#222222", 238]]]
    let s:p.tabline.right  = [[["#f0f0f0", 250], ["#222222", 242]]]
endif

let g:lightline#colorscheme#komau#palette = lightline#colorscheme#flatten(s:p)

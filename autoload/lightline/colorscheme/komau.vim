let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

if (&background == 'dark')
    let s:p.normal.left   = [[["#8F0024", 235], ["#181818", 167]], [["#F6F6FF", 167], ["#222222", 235]]]
    let s:p.normal.middle = [[["#F6F6FF", 255], ["#0E0E0E", 235]]]
    let s:p.normal.right  = [[["#8F0024", 235], ["#181818", 167]], [["#F6F6FF", 167], ["#222222", 235]]]

    let s:p.normal.error   = [[["#F6F6FF", 235], ["#9F03AD", 124]]]
    let s:p.normal.warning = [[["#F6F6FF", 235], ["#FFB20F", 215]]]

    let s:p.inactive.left   = [[["#D8D8D8", 235], ["#181818", 167]], [["#F6F6FF", 167], ["#222222", 235]]]
    let s:p.inactive.middle = [[["#F6F6FF", 255], ["#0E0E0E", 235]]]
    let s:p.inactive.right  = [[["#D8D8D8", 235], ["#181818", 167]], [["#F6F6FF", 167], ["#222222", 235]]]

    let s:p.insert.left   = [[["#004FBE", 235], ["#181818", 167]], [["#F6F6FF", 167], ["#222222", 235]]]
    let s:p.insert.middle = [[["#F6F6FF", 255], ["#0E0E0E", 235]]]
    let s:p.insert.right  = [[["#004FBE", 235], ["#181818", 167]], [["#F6F6FF", 167], ["#222222", 235]]]

    let s:p.replace.left   = [[["#181818", 235], ["#20B2AA", 167]], [["#F6F6FF", 167], ["#222222", 235]]]
    let s:p.replace.middle = [[["#F6F6FF", 255], ["#0E0E0E", 235]]]
    let s:p.replace.right  = [[["#181818", 235], ["#20B2AA", 167]], [["#F6F6FF", 167], ["#222222", 235]]]

    let s:p.visual.left   = [[["#181818", 235], ["#0EAD69", 167]], [["#F6F6FF", 167], ["#222222", 235]]]
    let s:p.visual.middle = [[["#F6F6FF", 255], ["#0E0E0E", 235]]]
    let s:p.visual.right  = [[["#181818", 235], ["#0EAD69", 167]], [["#F6F6FF", 167], ["#222222", 235]]]

    let s:p.tabline.left   = [[["#F6F6FF", 250], ["#222222", 242]]]
    let s:p.tabline.tabsel = [[["#A1A1A1", 235], ["#797979", 250]]]
    let s:p.tabline.middle = [[["#F6F6FF", 242], ["#222222", 238]]]
    let s:p.tabline.right  = [[["#F6F6FF", 250], ["#222222", 242]]]
else
    let s:p.normal.left   = [[["#8F0024", 235], ["#E2E2E2", 167]], [["#060404", 167], ["#D8D8D8", 235]]]
    let s:p.normal.middle = [[["#060404", 255], ["#ECECEC", 235]]]
    let s:p.normal.right  = [[["#8F0024", 235], ["#E2E2E2", 167]], [["#060404", 167], ["#D8D8D8", 235]]]

    let s:p.normal.error   = [[["#F6F6FF", 235], ["#8D029B", 124]]]
    let s:p.normal.warning = [[["#F6F6FF", 235], ["#FED442", 215]]]

    let s:p.inactive.left   = [[["#D8D8D8", 235], ["#E2E2E2", 167]], [["#060404", 167], ["#D8D8D8", 235]]]
    let s:p.inactive.middle = [[["#060404", 255], ["#ECECEC", 235]]]
    let s:p.inactive.right  = [[["#D8D8D8", 235], ["#E2E2E2", 167]], [["#060404", 167], ["#D8D8D8", 235]]]

    let s:p.insert.left   = [[["#0047AB", 235], ["#E2E2E2", 167]], [["#060404", 167], ["#D8D8D8", 235]]]
    let s:p.insert.middle = [[["#060404", 255], ["#ECECEC", 235]]]
    let s:p.insert.right  = [[["#0047AB", 235], ["#E2E2E2", 167]], [["#060404", 167], ["#D8D8D8", 235]]]

    let s:p.replace.left   = [[["#E2E2E2", 235], ["#20B2AA", 167]], [["#060404", 167], ["#D8D8D8", 235]]]
    let s:p.replace.middle = [[["#060404", 255], ["#ECECEC", 235]]]
    let s:p.replace.right  = [[["#E2E2E2", 235], ["#20B2AA", 167]], [["#060404", 167], ["#D8D8D8", 235]]]

    let s:p.visual.left   = [[["#E2E2E2", 235], ["#0EAD69", 167]], [["#060404", 167], ["#D8D8D8", 235]]]
    let s:p.visual.middle = [[["#060404", 255], ["#ECECEC", 235]]]
    let s:p.visual.right  = [[["#E2E2E2", 235], ["#0EAD69", 167]], [["#060404", 167], ["#D8D8D8", 235]]]

    let s:p.tabline.left   = [[["#222222", 242], ["#F6F6FF", 250]]]
    let s:p.tabline.tabsel = [[["#797979", 250], ["#A1A1A1", 235]]]
    let s:p.tabline.middle = [[["#222222", 238], ["#F6F6FF", 242]]]
    let s:p.tabline.right  = [[["#222222", 242], ["#F6F6FF", 250]]]

endif

let g:lightline#colorscheme#komau#palette = lightline#colorscheme#flatten(s:p)

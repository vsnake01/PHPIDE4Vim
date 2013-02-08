if exists('s:_pluginloaded') && s:_pluginloaded
    finish
elseif !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'plugin/frawor/autocommands': '0.0',
                \                   'plugin/frawor/functions': '0.0'}, 0)
    let s:ecmd={}
    call s:_f.augroup.add('Au1', [['BufEnter', '*', 0, s:ecmd]])
    finish
endif
function s:ecmd.function()
    call WriteFile('entered '.expand('<amatch>'))
    call s:_f.augroup.del('Au1')
    call s:_f.augroup.add('Au1', [['BufWipeout', '*', 0, 'call WriteFile("wiped ".expand("<amatch>"))']])
endfunction

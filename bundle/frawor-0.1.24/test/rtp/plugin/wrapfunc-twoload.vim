if !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'@/functions': '0.0'}, 0)
    let s:rdict={}
    call s:_f.addextfunctions({'Abc': s:rdict})
    W: First load
    finish
elseif s:_pluginloaded
    W: Third load
    finish
endif
W: Second load
function s:rdict.function()
    W$ Abc
endfunction

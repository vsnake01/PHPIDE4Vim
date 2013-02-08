if !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'@/commands': '0.0', '@/functions': '0.0'}, 0)
    let s:rdict={}
    call s:_f.command.add('Abc', s:rdict, {})
    Abc
    finish
elseif s:_pluginloaded
    finish
endif
function s:rdict.function()
    W$ Abc
endfunction

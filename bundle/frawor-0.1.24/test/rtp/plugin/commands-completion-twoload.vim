if !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'@/commands': '0.0', '@/functions': '0.0'}, 0)
    let s:rdict={}
    call s:_f.command.add('Abc', 'call WriteFile(<q-args>)',
                \         {'complete': s:rdict, 'nargs': '1'})
    let s:rlist=[]
    call s:_f.command.add('Def', 'call WriteFile(<q-args>)',
                \         {'complete': s:rlist, 'nargs': '1'})
    echom 'First load'
    finish
elseif s:_pluginloaded
    echom 'Third load'
    finish
endif
echom 'Second load'
function s:rdict.function(a, c, p)
    return [a:a.a:a]
endfunction
let s:list=['def', 'ghi']
let s:rlist+=['in list']

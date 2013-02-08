if !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'@/mappings': '0.1',
                \               '@/functions': '0.0'}, 0)
    let s:mappings={'alpha': {'rhs': ['%lhs'], 'lhs': 'a', 'func': {}},
                \    'beta': {'rhs': ['%lhs'], 'lhs': 'b'}}
    let s:mapoptions={'func': {}}
    call s:_f.mapgroup.add('MG', s:mappings, s:mapoptions)
    finish
elseif s:_pluginloaded
    finish
endif
function s:mappings.alpha.func.function(...)
    call WriteFile('alpha: ('.string(a:000)[1:-2].')')
    return ''
endfunction
function s:mapoptions.func.function(...)
    call WriteFile('beta: ('.string(a:000)[1:-2].')')
    return ''
endfunction

if exists('s:_pluginloaded') && s:_pluginloaded
    finish
elseif !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'plugin/frawor/mappings': '0.0',
                \               'plugin/mappings-twoload': '0.0',
                \               'plugin/frawor/functions': '0.0'}, 0)
    let s:mappings={'lambda': {'rhs': {}, 'lhs': 'k', 'args': ["%lhs"]}}
    call s:_f.mapgroup.add('MG', s:mappings)
    finish
endif
function s:mappings.lambda.rhs.function(...)
    call WriteFile('lambda: ('.string(a:000)[1:-2].')')
    return ""
endfunction

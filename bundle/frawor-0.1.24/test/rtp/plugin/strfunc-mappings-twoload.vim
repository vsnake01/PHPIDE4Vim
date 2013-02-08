if !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'@/mappings': '0.1',
                \               '@/functions': '0.0'}, 0)
    function MapFunc(...)
        call WriteFile('args: ('.string(a:000)[1:-2].')')
        return ''
    endfunction
    let s:_functions+=['MapFunc']

    let s:strfunc={}
    let s:function={}
    call s:_f.mapgroup.add('Strfunc', {'1': {'rhs': ['%lhs', '%str'],
                \                        'strfunc': s:strfunc,
                \                           'func': function('MapFunc'),
                \                            'lhs': 'a',},
                \                      '2': {'rhs': s:function,
                \                        'strfunc': s:strfunc,
                \                           'args': ['%lhs', '%str'],
                \                            'lhs': 'b',},
                \                     })
    finish
elseif s:_pluginloaded
    finish
endif
function s:strfunc.function(char, ...)
    if a:0
        call WriteFile('strfunc: ('.string([a:char]+a:000)[1:-2].')')
    endif
    if a:char=~#'^\u$'
        return [ 1,  0,  0]
    elseif a:char=~#'^\l$'
        return [ 2,  0,  0]
    elseif a:char=~#'^\s$'
        return [ 3,  0,  0]
    elseif a:char=~#'^\d$'
        return [ 1,  1,  0]
    elseif a:char is# ','
        return [ 2,  2,  0]
    elseif a:char is# '.'
        return [ 3,  3,  0]
    elseif a:char is# '-'
        return [ 1,  0,  4]
    elseif a:char is# ';'
        return [ 2,  0,  5]
    elseif a:char is# '!'
        return [ 3,  0,  6]
    elseif a:char is# '+'
        return [ 1,  7,  8]
    elseif a:char is# ':'
        return [ 2,  9, 10]
    elseif a:char is# '?'
        return [ 3, 11, 12]
    elseif a:char is# '^'
        return [-1,  0,  0]
    elseif a:char is# '#'
        return [-1,  0, 13]
    elseif a:char is# '%'
        return [-1, 14,  0]
    elseif a:char is# '&'
        return [-1, 15, 16]
    endif
    return [0, 0, 0]
endfunction
let s:function.function=function('MapFunc')

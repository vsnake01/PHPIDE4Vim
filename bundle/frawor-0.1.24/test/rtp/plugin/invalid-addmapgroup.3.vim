function s:Eval(expr)
    return eval(a:expr)
endfunction
let s:_sid=+matchstr(s:Eval('expand("<sfile>")'), '\m\d\+')
let s:_sfile=expand('<sfile>:p')
call FraworRegister([0, 0], s:_sid, s:_sfile, {'@/mappings': [0, 0]}, 1, s:)
call s:_f.mapgroup.add("Mgroup", {'test': {'rhs': ','}})
call FraworRegister(0, s:_sid, s:_sfile, {'@/mappings': [0, 0]}, 1, s:)
call s:_f.mapgroup.add("Mgroup", {'map': {'rhs': '.'}})


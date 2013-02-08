execute frawor#Setup('0.0', {'plugin/frawor/options': '0.0'}, 1)
let s:_oprefix='test'
function s:F.checker(option)
    call WriteFile('option: '.string(a:option))
    return 0
endfunction
let g:test_test='abc'
let s:_options={"test": {'checker': s:F.checker}}
call s:_f.getoption("test")

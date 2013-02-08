execute frawor#Setup('0.0', {'plugin/frawor/options': '0.0'}, 1)
let s:_oprefix='test'
let g:test_test='abc'
let s:_options={"test": {'merger': 'extend', 'default': 0}}
try
    call s:_f.getoption("test")
finally
    unlet g:test_test
endtry

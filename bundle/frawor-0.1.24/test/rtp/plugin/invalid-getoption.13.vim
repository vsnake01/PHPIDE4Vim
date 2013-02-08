execute frawor#Setup('0.0', {'plugin/frawor/options': '0.0'}, 1)
let s:_oprefix='test'
let s:_options={"test": {}}
call s:_f.getoption("test", 0)

execute frawor#Setup('0.0', {'plugin/frawor/options': '0.0'}, 1)
let s:_options={"test": {}}
" It will fail prefix because invalid-getoption.11 is not a valid prefix
call s:_f.getoption("test")

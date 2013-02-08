execute frawor#Setup('0.0', {'plugin/frawor/options': '0.0'}, 1)
let s:_options={"test": {'merger': function('s:Eval')}}
call s:_f.getoption("test")

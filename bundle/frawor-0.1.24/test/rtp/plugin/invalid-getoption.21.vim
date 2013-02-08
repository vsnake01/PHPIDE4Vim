execute frawor#Setup('0.0', {'plugin/frawor/options': '0.0'}, 1)
let s:_oprefix='test'
let s:_options={"test": {'merger': 'extend'}}
let g:testOptions={'test': function('s:Eval')}
let b:testOptions={'test': function('s:Eval')}
call s:_f.getoption("test")

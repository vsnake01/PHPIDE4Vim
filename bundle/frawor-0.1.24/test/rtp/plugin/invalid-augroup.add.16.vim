execute frawor#Setup('0.0', {'plugin/frawor/autocommands': '0.0',}, 1)
call s:_f.augroup.add('', [["BufAdd", "*", 0, "echo 'Foo'"],
            \              ["BufAdd", "*", 0, {'function': function("s:Eval")}]])

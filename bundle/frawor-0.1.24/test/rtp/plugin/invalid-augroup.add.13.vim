execute frawor#Setup('0.0', {'plugin/frawor/autocommands': '0.0',}, 1)
call s:_f.augroup.add('test', [["BufAdd", "*", 0, "echo 'Foo'"],
            \                  ["BufAdd", "*", 0, []]])

execute frawor#Setup('0.0', {'plugin/frawor/autocommands': '0.0',}, 1)
call s:_f.augroup.add('aug2', [['BufNew', '*', 0, 'echo "abc"'], 0])

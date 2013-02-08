execute frawor#Setup('0.0', {'plugin/frawor/python': '0.0'}, 1)
if has_key(s:_r, 'py')
    call s:_r.py.run(['import xxxtest',
                \     'xxxtest.WriteFile(vim.eval("a:1"))'], "python-test")
endif


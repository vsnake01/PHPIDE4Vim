execute frawor#Setup('0.0', {'plugin/postresource-copyfunc': '0.0'}, 1)
call WriteFile(expand('<sfile>:t:r:e').': '.
            \join(sort(map(items(s:_r), 'string(v:val)'))))

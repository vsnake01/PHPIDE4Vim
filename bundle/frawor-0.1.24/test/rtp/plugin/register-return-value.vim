execute frawor#Setup('0.0', {}, 1)
call call("WriteFile", map(sort(keys(s:_frawor)),
            \               'v:val.": ".string(s:_frawor[v:val])'))


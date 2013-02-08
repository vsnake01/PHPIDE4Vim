execute frawor#Setup('0.0', {'plugin/ignoredeps-feature': '0',
            \                'plugin/unload-self-feature': '0'}, 1)
call s:_f.unload()
if !empty(s:)
    throw "s: is not empty"
endif

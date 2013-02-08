if exists('s:_pluginloaded') && s:_pluginloaded
    finish
elseif !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'plugin/double-load': '0.0'}, 0)
    call WriteFile('registered '.s:_frawor.id,
                \  'features: '.join(sort(keys(s:_f))))
    finish
endif
call WriteFile('loaded '.s:_frawor.id,
            \  'features: '.join(sort(keys(s:_f))))


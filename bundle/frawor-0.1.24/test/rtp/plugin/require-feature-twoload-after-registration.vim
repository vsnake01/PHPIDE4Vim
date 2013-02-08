if !exists('s:_pluginloaded')
    execute frawor#Setup('0.0', {'@frawor': '0.1'}, 0)
    call WriteFile(sort(keys(s:_f)))
    function s:F.main()
        call WriteFile('Entered s:F.main()')
        runtime plugin/twoload-plugin-with-feature-2.vim
        call WriteFile('Has run :runtime')
        call FraworLoad('@twoload-plugin-with-feature-3')
        call WriteFile('Has run FraworLoad')
        runtime plugin/twoload-plugin-with-feature-after-registration-2.vim
        call WriteFile('Has run :runtime 2')
        call FraworLoad('@twoload-plugin-with-feature-after-registration-3')
        call WriteFile('Has run FraworLoad 2')
        call WriteFile('require tpwf1: '.s:_f.require('@twoload-plugin-with-feature-1', [0, 0], 0))
        call WriteFile('require tpwf2: '.s:_f.require('@twoload-plugin-with-feature-2', [0, 0], 0))
        call WriteFile('require tpwf3: '.s:_f.require('@twoload-plugin-with-feature-3', [0, 0], 0))
        call WriteFile('require tpwfar1: '.s:_f.require('@twoload-plugin-with-feature-after-registration-1', [0, 0], 0))
        call WriteFile('require tpwfar2: '.s:_f.require('@twoload-plugin-with-feature-after-registration-2', [0, 0], 0))
        call WriteFile('require tpwfar3: '.s:_f.require('@twoload-plugin-with-feature-after-registration-3', [0, 0], 0))
        call WriteFile('require pwf: '.s:_f.require('@plugin-with-feature',             [0, 0], 0))
        call WriteFile(sort(keys(s:_f)))
    endfunction
    call s:F.main()
    finish
elseif s:_pluginloaded
    finish
endif
call WriteFile('Loaded '.s:_frawor.id)

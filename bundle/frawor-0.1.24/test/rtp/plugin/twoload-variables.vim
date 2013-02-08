let s:vexpr='((exists("@@@"))?(string(@@@)):("undef"))'
let s:wexpr = '["pl: ".'.substitute(s:vexpr, '@@@', 's:_pluginloaded', 'g')
            \.'," l: ".'.substitute(s:vexpr, '@@@', 's:_loading',      'g').']'
if !exists('s:_pluginloaded')
    call WriteFile(['Before registration: ']+eval(s:wexpr))
    execute frawor#Setup('0.0', {}, 0)
    call WriteFile(['After registration: ']+eval(s:wexpr))
    finish
elseif s:_pluginloaded
    call WriteFile(['Second run: ']+eval(s:wexpr))
    finish
elseif !exists('s:_loading')
    call WriteFile(['Runtime: ']+eval(s:wexpr))
    call FraworLoad(s:_frawor.id)
    finish
endif
call WriteFile(['After load: ']+eval(s:wexpr))

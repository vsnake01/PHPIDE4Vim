execute frawor#Setup('0.0', {}, 1)
function s:F.unloadself(plugdict, fdict)
    return FraworUnload(a:plugdict)
endfunction
call s:_f.newfeature('unload', {'cons': s:F.unloadself})


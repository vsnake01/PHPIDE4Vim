execute frawor#Setup('0.0', {'plugin/frawor/mappings': '0.0'}, 1)
let g:frawormap_Mgroup_test=[]
try
    call s:_f.mapgroup.add("Mgroup", {'test': {'rhs': 'j', 'lhs': 'a'}})
catch /^Frawor:plugin\/frawor\/options:filfail:/
endtry


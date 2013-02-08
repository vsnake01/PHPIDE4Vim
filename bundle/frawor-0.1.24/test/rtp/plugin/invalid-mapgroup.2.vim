execute frawor#Setup('0.0', {'plugin/frawor/mappings': '0.0',
            \             'plugin/invalid-mapgroup.2': '0.0',}, 1)
call s:_f.mapgroup.add('Mgroup', {'mapping': {'rhs': 'abc', 'lhs': 'a'}},
            \                    {'buffer': 0})
call s:_f.mapgroup.map('Mgroup', 0)


execute frawor#Setup('0.0', {}, 1)
if has("tcl")
    tcl package require xxxtest 0.0
    tcl xxxtest::WriteFile "tcl-test"
endif

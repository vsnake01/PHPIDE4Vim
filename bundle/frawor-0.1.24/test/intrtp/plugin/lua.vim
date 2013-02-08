execute frawor#Setup('0.0', {}, 1)
if has("lua")
    lua require"xxxtest"
    lua xxxtest.WriteFile("lua-test")
endif

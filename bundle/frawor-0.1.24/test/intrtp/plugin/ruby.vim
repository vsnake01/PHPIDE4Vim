execute frawor#Setup('0.0', {}, 1)
if has("ruby")
    ruby require "xxxtest.rb"
    ruby XXXTest::WriteFile("ruby-test")
endif

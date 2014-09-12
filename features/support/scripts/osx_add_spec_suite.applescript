tell application "Xcode"
    activate
end tell

tell application "System Events" to tell application process "Xcode"
    delay 5
    keystroke "?" using command down
    delay 1
    keystroke "new target"
    delay 1
    key code 125
    keystroke return

    set projectWindow to "UNKNOWN"
    repeat with windowCount from 0 to count of windows
        set theWindow to item windowCount of windows
        if title of theWindow contains "template-project" then
            set projectWindow to theWindow
        end if
    end repeat

    set focused of scroll area 1 of sheet 1 of projectWindow to true
    keystroke "OS X"
    delay 2
    keystroke "Cedar"
    click UI element "OS X Cedar Spec Suite" of group 1 of scroll area 1 of group 1 of sheet 1 of projectWindow
    click UI element "Next" of sheet 1 of projectWindow
    keystroke "Specs    Pivotal com.pivotal.cedar"
    delay 1
    click UI element "Finish" of sheet 1 of projectWindow
end tell

tell application "Xcode"
    quit
end tell

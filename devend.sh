#!/bin/bash
# Close all splits opened by devenv (bottom-right → top-right → left)

DELAY=0.3

osascript <<EOF
tell application "System Events"
  tell process "Ghostty"
    -- Go to bottom-right pane
    keystroke "l" using {control down}
    delay $DELAY
    keystroke "j" using {control down}
    delay $DELAY

    -- Close bottom-right (yazi)
    keystroke "w" using command down
    delay $DELAY

    -- Close top-right (lazygit)
    keystroke "w" using command down
    delay $DELAY

    -- Close left pane (claude)
    keystroke "w" using command down
  end tell
end tell
EOF

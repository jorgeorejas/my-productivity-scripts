#!/bin/bash
# Ghostty dev layout:
#   Left (full height) : claude code
#   Top right          : lazygit
#   Bottom right       : yazi (file explorer)

DELAY=0.5
DIR="${1:-$PWD}"

osascript <<EOF
tell application "System Events"
  tell process "Ghostty"
    -- Pane 1 (left, current): Claude Code
    keystroke "cd $DIR && claude --dangerously-skip-permissions"
    key code 36
    delay $DELAY

    -- Split right (Cmd+D default in Ghostty)
    keystroke "d" using command down
    delay $DELAY

    -- Pane 2 (top-right): lazygit
    keystroke "cd $DIR && lazygit"
    key code 36
    delay $DELAY

    -- Split down (Cmd+Shift+D default in Ghostty)
    keystroke "d" using {command down, shift down}
    delay $DELAY

    -- Pane 3 (bottom-right): yazi
    keystroke "yazi $DIR"
    key code 36
    delay $DELAY

    -- Focus back to left pane (Claude Code)
    keystroke "h" using {control down}
  end tell
end tell
EOF

tell application "Microsoft Outlook"
  activate
  set calendar_open to false
  repeat with this_window in main windows
    if view of this_window is calendar view then
      set calendar_open to true
    end if
  end repeat
  if calendar_open is false then
    make new main window
    set view of the first main window to calendar view
  end if
end tell

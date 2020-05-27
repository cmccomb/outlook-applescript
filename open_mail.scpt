tell application "Microsoft Outlook"
  activate
  set mail_open to false
  repeat with this_window in main windows
    if view of this_window is mail view then
      set mail_open to true
    end if
  end repeat
  if mail_open is false then
    make new main window
    set view of the first main window to mail view
  end if
end tell

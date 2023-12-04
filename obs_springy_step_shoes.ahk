#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; force closes any existing instance of the script without a prompt
; extremely useful when debugging or testing a scripts functionality
#singleinstance force

; This line makes it so hotkeys only work when a certain window is active 
#IfWinActive ahk_exe obs64.exe

F1::
Send, !x ; Switch to main scene
return

F2::
Send, !c ; Switch to soon scene
return

F3::
Send, !b ; Switch to BRB scene
return

F4::
Send, !n ; Switch to Over scene
return

F5::
Send, !m ; Toggles mute for the game audio track
return

F6::

return

F7::

return

F8::

return

F9::

return

F10::

return

F11::

return

F12:: ; captures mouse coordinates from the active window and updates it via a tooltip. Useful for determining click points for mouse events.
CoordMode, Mouse, Screen
SetTimer, Check, 20
return

Check:
MouseGetPos, xx, yy
Tooltip %xx%`, %yy%
return
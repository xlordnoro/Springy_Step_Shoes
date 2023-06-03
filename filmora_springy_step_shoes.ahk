#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; force closes any existing instance of the script without a prompt
; extremely useful when debugging or testing a scripts functionality
#singleinstance force

; This line makes it so hotkeys only work when a certain window is active 
#IfWinActive ahk_exe Wondershare Filmora X.exe

F1::
Click, 25 50 ; mouse coords for media tab on my monitor
return

F2::
Click, 145 50 ; mouse coords for titles tab on my monitor
return

F3::
Click, 205 50 ; mouse coords for transition tab on my monitor
return

F4::
Send, ^b ; splits video on playhead position
return

F5::
Send, !e ; shows video properties. Useful for transforms, motion tracking, etc.
return

F6::
Send, m ; adds a marker onto the timeline based on the pos of the playhead.
return

F7::
Click, 205 850 Right ; adds keyframe animation
Click, 250 495
return

F8::
Send, ^!d ; detaches audio track from selected video track.
return
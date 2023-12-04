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
Click, 275 50 ; mouse coords for effects tab on my monitor
return

F5::
Send, ^b ; splits video on playhead position
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

F9:: ; Fade in for audio since filmora lacks this basic functionality...
Send, {Click} ; Clicks on the timeline to bring up the properties of the video
Send, {Click} ; Clicks on the timeline to bring up the properties of the video
Sleep, 100 ; adds a small delay or the script will run too quick and click before the tab is visible on screen.
Click, 82 47 Left ; Clicks on the audio tab
Sleep, 100 ; adds a small delay or the script will run too quick and click before the tab is visible on screen.
Click, 804 135 Left ; Clicks on fade in field
Click, 804 135 Left ; Clicks on fade in field
Send, .5 ; Adds .5 seconds of audio fade in to the selected clip in the timeline
return

F10:: ; Fade out for audio since filmora lacks this basic functionality...
Send, {Click} ; Clicks on the timeline to bring up the properties of the video
Send, {Click} ; Clicks on the timeline to bring up the properties of the video
Sleep, 100 ; adds a small delay or the script will run too quick and click before the tab is visible on screen.
Click, 82 47 Left ; Clicks on the audio tab
Sleep, 100 ; adds a small delay or the script will run too quick and click before the tab is visible on screen.
Click, 804 174 Left ; Clicks on fade out field
Click, 804 174 Left ; Clicks on fade out field
Send, .5 ; Adds .5 seconds of audio fade out to the selected clip in the timeline
return

F11:: ; Fade in & out for audio since filmora lacks this basic functionality...
Send, {Click} ; Clicks on the timeline to bring up the properties of the video
Send, {Click} ; Clicks on the timeline to bring up the properties of the video
Sleep, 100 ; adds a small delay or the script will run too quick and click before the tab is visible on screen.
Click, 82 47 Left ; Clicks on the audio tab
Sleep, 100 ; adds a small delay or the script will run too quick and click before the tab is visible on screen.
Click, 804 135 Left ; Clicks on fade in field
Click, 804 135 Left ; Clicks on fade in field
Send, .5 ; Adds .5 seconds of audio fade in to the selected clip in the timeline
Sleep, 100 ; adds a small delay or the script will run too quick and click before the tab is visible on screen.
Click, 804 174 Left ; Clicks on fade out field
Click, 804 174 Left ; Clicks on fade out field
Send, .5 ; Adds .5 seconds of audio fade out to the selected clip in the timeline
return

F12:: ; captures mouse coordinates from the active window and updates it via a tooltip. Useful for determining click points for mouse events.
CoordMode, Mouse, Screen
SetTimer, Check, 20
return

Check:
MouseGetPos, xx, yy
Tooltip %xx%`, %yy%
return
; Timer to check mouse position
SetTimer, CheckMouse, 300

#Persistent
#SingleInstance force

WinGetPos,,,Xmax,Ymax,ahk_class Progman  ; get desktop size


T = 2   ; adjust tolerance value 

Xmax := Xmax - T   ; allow tolerance to mouse corner activation position
Ymax := Ymax - T

CheckMouse:                   ; check mouse position
CoordMode, Mouse, Screen
MouseGetPos, MouseX, MouseY

GetKeyState, SState, Shift
GetKeyState, AState, Alt
GetKeyState, CState, Control

; open taskview if mouse in top left corner

if (MouseY < T and MouseX < T) 
{
send, #{Tab} 
}

Return
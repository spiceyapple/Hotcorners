#Persistent ; run constantly
#SingleInstance force ; run one instance only

T = 2   ; adjust tolerance value 

; Timer to check mouse position
SetTimer, CheckMouse, 300

CheckMouse:                   ; check mouse position
CoordMode, Mouse, Screen
MouseGetPos, MouseX, MouseY

; open taskview if mouse in top left corner

if (MouseY < T and MouseX < T) 
{
send, #{Tab} 
}

Return

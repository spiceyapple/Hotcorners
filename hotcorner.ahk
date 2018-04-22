; always running
#Persistent

; one instance only
#SingleInstance force

; Timer to check mouse position
SetTimer, CheckMouse, 300 

; get desktop size
WinGetPos,,,Xmax,Ymax,ahk_class Progman  

; Calculate center of screen
Xcenter := Xmax/2 
Ycenter := Ymax/2

; set tolerance
T = 4   

; apply tolerance to corners
Xmax := Xmax - T 
Ymax := Ymax - T

; check mouse position
CheckMouse: 
CoordMode, Mouse, Screen
MouseGetPos, MouseX, MouseY


;;COMMANDS FOR HOTCORNERS;;

;top left corner
if (MouseY < T and MouseX < T) 
{
send, #{Tab} ; Win+Tab to open taskviewer
MouseMove, 15, 10 ; move mouse to prevent continual toggling 
;MouseMove, Xcenter, Ycenter ; alternatively, centre mouse
}

;Commands for top right corner
;if (MouseY < T and MouseX > Xmax)
;{
;}

;bottom left corner
;if (MouseY > Ymax and MouseX < T)
;{
;}

;bottom right corner
;if (MouseY > Ymax and MouseX > Xmax)
;{
;}

Return

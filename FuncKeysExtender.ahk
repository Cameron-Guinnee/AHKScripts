; FuncKeysExtender.ahk
; AHK Version: 1.1
; This is a lightweight AutoHotkey script to toggle F1–F12 between their default behavior and F13–F24 mappings, controlled via the Scroll Lock key. 

#Requires AutoHotkey v1.1 
#NoEnv ; Avoids checking empty variables to see if they're environmental variables 
#SingleInstance Force ; Ensures that there'll never be more than one instance of this script running at once 

/*
SetScrollLockState, AlwaysOff ; Disables the original functionality of the ScrollLock key to free it up
*/
 
originalScrollLock := GetKeyState("ScrollLock", "T") 
SetScrollLockState, Off
OnExit, RestoreScrollLock 

bIsEnabled := false 

ScrollLock:: 
    bIsEnabled := !bIsEnabled 
    SetScrollLockState, % bIsEnabled ? "On" : "Off"
    SoundBeep, % bIsEnabled ? 1500 : 1000
return 

RestoreScrollLock: 
    SetScrollLockState, % originalScrollLock ? "On" : "Off"
ExitApp

#If bIsEnabled 
F1::Send {F13} 
F2::Send {F14} 
F3::Send {F15} 
F4::Send {F16} 
F5::Send {F17} 
F6::Send {F18} 
F7::Send {F19} 
F8::Send {F20} 
F9::Send {F21} 
F10::Send {F22} 
F11::Send {F23} 
F12::Send {F24} 
#If ; turn off context-sensitivity 

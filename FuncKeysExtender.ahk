/*
        It isn't a well-known fact, but there are actually 24 function keys on a keyboard; it's just that F13-F24 aren't used.. 
    by modern systems and thus the vast majority of keyboard manufacturers don't include any physical keys for them in their designs. 
    
        This is an AutoHotkey script that seeks to address this problem by making the F13-F24 keys more accessible, and it does this by.. 
    turning the ScrollLock key into a toggle and making it so that, whenever the toggle is active, pressing the F1-F12 keys will send F13-F24 as..
    the output instead. It's a rather simple script, but having access to 12 unused keys opens up a whole new world of possibilities for those who..
    use macros. 
*/

#NoEnv ; Avoids checking empty variables to see if they're environmental variables 
#SingleInstance Force ; Ensures that there'll never be more than instance of this macro running at once
SetScrollLockState, AlwaysOff ; Disables the original functionality of the ScrollLock key
bIsEnabled := False  

/*
ActivationKey := IniRead("settings.ini", "function_keys_extender", "sActivationKey")
Hotkey ActivationKey, ToggleExtraFuncKeys

ToggleExtraFuncKeys:
Global bIsEnabled 
If (bIsEnabled == True) 
{
  SoundBeep 1000 ; Play a lower pitch tone to convey that the functionality will be disabled
}
Else 
{
  SoundBeep 1500 ; Play a higher pitch tone to convey that the functionality will be enabled
}
bIsEnabled := !bIsEnabled
return
*/

ScrollLock:: 
Global bIsEnabled
If (bIsEnabled == True)
{
  SoundBeep 1000 ; Play a lower pitch tone to convey that the functionality will be disabled
}
Else 
{
  SoundBeep 1500 ; Play a higher pitch tone to convey that the functionality will be enabled
}
bIsEnabled := !bIsEnabled 
return

F1:: 
Global bIsEnabled 
If (bIsEnabled == True)
{
  Send {F13}
}
Else 
{
  Send {F1}
}
return 
  
F2::
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F14}
} 
Else 
{
  Send {F2}
}
return 

F3:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
    Send {F15}
}
Else 
{
  Send {F3}
}
return

F4:: 
Global bIsEnabled
If (bIsEnabled == True) 
{
  Send {F16} 
}
Else 
{
  Send {F4}
}
return

F5:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F17} 
}
Else 
{
  Send {F5}
}
return

F6:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F18} 
}
Else 
{
  Send {F6}
}
return

F7:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F19} 
}
Else 
{
  Send {F7}
}
return

F8:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F20} 
}
Else 
{
  Send {F8}
}
return

F9::  
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F21} 
}
Else 
{
  Send {F9}
}
return

F10:: 
If (bIsEnabled == True) 
{
  Send {F22} 
}
Else 
{
  Send {F10}
}
return

F11:: 
If (bIsEnabled == True) 
{
  Send {F23} 
}
Else 
{
  Send {F11}
}
return 

F12:: 
If (bIsEnabled == True) 
{
  Send {F24}
}
Else 
{
  Send {F12}
}
return

/*
F13::
Send "F13 was pressed!"
return
*/

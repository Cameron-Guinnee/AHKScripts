/*
        This is an AutoHotkey script that, in essence, grants access to 12 extra keys to which macros can be assigned. 
    It isn't a well-known fact, but there are actually 24 function keys on a keyboard; it's just that F13-F24 aren't used.. 
    by modern systems and thus the vast majority of keyboard manufacturers don't include any physical keys for them in their designs. 
*/

#NoEnv ; Avoids checking empty variables to see if they're environmental variables 
#SingleInstance Force ; Ensures that there'll never be more than instance of this macro running at once
SetScrollLockState, AlwaysOff ; Disables the original functionality of the ScrollLock key
bIsEnabled := False  

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

F1:: 
Global bIsEnabled 
If (bIsEnabled == True)
{
  Send {F13}
}
return 
  

F2::
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F14}
} 
return 


F3:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
    Send {F15}
}


F4:: 
Global bIsEnabled
If (bIsEnabled == True) 
{
  Send {F16} 
}
return

F5:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F17} 
}
return

F6:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F18} 
}
return

F7:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F19} 
}
return

F8:: 
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F20} 
}
return

F9::  
Global bIsEnabled 
If (bIsEnabled == True) 
{
  Send {F21} 
}
return

F10:: 
If (bIsEnabled == True) 
{
  Send {F22} 
}
return


F11:: 
If (bIsEnabled == True) 
{
  Send {F23} 
}
return 

F12:: 
If (bIsEnabled == True) 
{
  Send {F24}
}
return

; This'll test if we're actually able to access F13 in this way
F13:: 
SoundBeep 3000
return

/*
#HotIf  GetKeyState("ScrollLock", "P")
{
  F1::F13
  F2::F14
  F3::F15
  F4::F16
  F5::F17
  F6::F18
  F7::F19
  F8::F20
  F9::F21
  F10::F22 
  F11::F23 
  F12::F24     
}
#HotIf 
*/

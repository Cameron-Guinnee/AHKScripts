/*
    This is an AutoHotkey that, in essence, grants access to 12 extra keys to which macros can be assigned. 
  It isn't a well-known fact, but there are actually 24 function keys on a keyboard; it's just that F13-F24 lack..
  phyiscal keys 
  

This is an AutoHotkey script that swaps function keys F1-F12 with F13-F24 


*/

#NoEnv ; Avoids checking empty variables to see if they're environmental variables 
#SingleInstance Force ; Ensures that there'll never be more than instance of this macro running at once
SetScrollLockState, AlwaysOff ; Disables the original functionality of the ScrollLock key
bIsEnabled := False  

ScrollLock:: {
  Global bIsEnabled

  If (bIsEnabled == True)
  {
    SoundBeep(1000) ; Play a lower pitch tone to convey that the functionality will be disabled
  }
  Else 
  {
    SoundBeep(1500) ; Play a higher pitch tone to convey that the functionality will be enabled
  }
  bIsEnabled := !bIsEnabled 
}

F1:: {
  Global bIsEnabled 
  If (bIsEnabled == True)
  {
    Send {F13}
  }
}  

F2:: {
  Global bIsEnabled 
  If (bIsEnabled == True) 
  {
    Send {F14}
  } 
}

F3:: {
  Global bIsEnabled 
  If (bIsEnabled == True) 
  {
    Send {F15}
  }
}

F4:: {
  Global bIsEnabled
  If (bIsEnabled == True) 
  {
    Send {F16} 
  }
}

F5:: {
  Global bIsEnabled 
  If (bIsEnabled == True) 
  {
    Send {F17} 
  }
}

F6:: {
  Global bIsEnabled 
  If (bIsEnabled == True) 
  {
    Send {F18} 
  }
}

F7:: {
  Global bIsEnabled 
  If (bIsEnabled == True) 
  {
    Send {F19} 
  }
}

F8:: {
  Global bIsEnabled 
  If (bIsEnabled == True) 
  {
    Send {F20} 
  }
}

F9:: { 
  Global bIsEnabled 
  If (bIsEnabled == True) 
  {
    Send {F21} 
  }
}

F10:: {
  If (bIsEnabled == True) 
  {
    Send {F22} 
  }
}

F11:: {
  If (bIsEnabled == True) 
  {
    Send {F23} 
  }
}

F12:: {
  If (bIsEnabled == True) 
  {
    Send {F24}
  }
}

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

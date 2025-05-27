#NoEnv
#SingleInstance Force
SetScrollLockState, AlwaysOff
bIsEnabled := False

ScrollLock:: {
  Global bIsEnabled
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

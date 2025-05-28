#NoEnv ; Avoids checking empty variables to see if they're environmental variables 
#SingleInstance Force ; Ensures that no more than one instance of this script can run at the same time
; #Warn ; Enables warnings to assist with debugging
SetWorkingDir %A_ScriptDir% ; Ensures that there is a consistent starting directory 
SendMode Input 
SetTitleMatchMode 2

If not A_IsAdmin 
{
  Run *RunAs "%A_ScriptFullPath%"
  ExitApp 
}

GroupAdd All 
Menu Case, Add, &UPPERCASE, CCase 
Menu Case, Add, &lowercase, CCase 
Menu Case, Add, &Title Case, CCase 
Menu Case, Add, &Sentence Case, CCase
Menu Case, Add 
Menu Case, Add, &Fix Linebreaks, CCase 
Menu Case, Add, &Reverse, CCase

^CapsLock::
GetText(TempText)
If not ErrorLevel
{
  Menu Case, Show
}
return

CCase:: 
If (A_ThisMenuItemPos == 1)
{
  StringUpper, TempText, TempText
}
Else If (A_ThisMenuItemPos == 2)
{
  StringLower, TempText, TempText
}
Else If (A_ThisMenuItemPos == 3) 
{
  StringLower, TempText, TempText, T
}
Else If (A_ThisMenuItemPos == 4)
{
  StringLower, TempText, TempText 
  TempText := RegExReplace(TempText, "((?:^|[.!?]\s+)[a-z])", "$u1")
} 
Else If (A_ThisMenuItemPos == 6) 
{
  TempText := RegExReplace(TempText, "\R", "`r`n")
}
Else If (A_ThisMenuItemPos == 7) 
{
  Temp2 :=
  StringReplace, TempText, TempText, `r`n, % Chr(29), All 
  Loop Parse, TempText 
  {
    Temp2 := A_LoopField . Temp2
  }
  StringReplace, TempText, Temp2, % Chr(29), `r`n, All
}
PutText(TempText) 
Return


; This'll copy text to a variable without modifying the clipboard
GetText(ByReg MyText := "")
{
  SavedClip := ClipboardAll 
  Clipboard := 
  Send ^c 
  ClipWait 0.5 
  If ErrorLevel 
  {
    Clipboard := SavedClip 
    MyText := 
    Return
  }
  MyText := Clipboard 
  Clipboard := SavedClip 
  Return MyText
}

; This'll paste text from a variable without modifying the clipboard
PutText(MyText) 
{
  SavedClip := ClipboardAll 
  Clipboard :=  
  Sleep 20 
  Clipboard := MyText 
  Send ^v 
  Sleep 100 
  Clipboard := SavedClip 
  Return
}



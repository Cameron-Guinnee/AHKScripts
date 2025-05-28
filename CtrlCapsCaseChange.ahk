If not A_IsAdmin
{
  Run *RunAs "%A_ScriptFullPath%" ; Requires v1.0.92.01+
  ExitApp
}

#NoEnv 
SendMode Input 
SetWorkingDir %A_ScriptDir%
#SingleInstance Force 
SetTitleMatchMode 2 

GroupAdd All


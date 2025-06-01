/* 
  This AutoHotkey script is meant to be placed in the startup folder on Windows; it'll let the user have AutoHotkey scripts run at startup without having to copy/paste each script into the startup folder.
*/
; TODO - Verify the path to settings.ini, throwing an error message if it is invalid.
PathToSettingsIni := EnvGet("USERPROFILE") . "\Documents\My AutoHotkey Scripts\settings.ini"


Loop 
{
  PathToExecutable := IniRead(PathToSettingsIni, "autostart", "sFilePath" . A_Index, "ERROR") 
  If (PathToExecutable == "ERROR")
  {
    ExitApp
  }
  Else If (PathToExecutable != "") 
  {
    PathToExecutable := EnvGet("USERPROFILE") . PathToExecutable
    Run PathToExecutable
  }
}

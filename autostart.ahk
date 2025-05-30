; This AutoHotkey script is meant to be placed in the startup folder on Windows; it'll let the user have AutoHotkey scripts run at startup without having to copy/paste each script into the startup folder.
DriveLetter := IniRead("settings.ini", "general", "sDriveLetter")

Loop 
{
  Global DriveLetter
  PathToExecutable := IniRead("settings.ini", "startup", "sFilePath" . A_Index, "ERROR") 
  If (PathToExecutable == "ERROR")
  {
    ExitApp
  }
  Else If (PathToExecutable != "") 
  {
    PathToExecutable := DriveLetter . PathToExecutable
    Run PathToExecutable
  }
}

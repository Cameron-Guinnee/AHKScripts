; This AutoHotkey script is meant to be placed in the startup folder on Windows; it'll let the user have AutoHotkey scripts run at startup without having to copy/paste each script into the startup folder.

;   This loop needs an exit condition, and I'll probably have to use the IniRead's default parameter to handle it. 
Loop 
{
  DriveLetter := IniRead("settings.ini", "general", "sDriveLetter")
  PathToExecutable := IniRead("settings.ini", "startup", "sFilePath" . A_Index)  
  If (PathToExecutable != "ERROR" && PathToExecutable != "")
  {
    PathToExecutable := DriveLetter . PathToExecutable
    Run PathToExecutable
  }
}

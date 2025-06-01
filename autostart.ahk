UserProfile := EnvGet("USERPROFILE")
/* 
  This AutoHotkey script is meant to be placed in the startup folder on Windows; it'll let the user have AutoHotkey scripts run at startup without having to copy/paste each script into the startup folder.
*/
AhkScriptsDir := UserProfile . "\Documents\My AutoHotkey Scripts" 
If !FileExist(AhkScriptsDir) ; 'My AutoHotkey Scripts' folder doesn't exist 
{
  MissingDirMsg := MsgBox("The " . AhkScriptsDir . " folder doesn't exist!")
  ExitApp
}

SettingsIni := AhkScriptsDir . "\settings.ini"
If !FileExist(SettingsIni) ; settings.ini doesn't exist 
{
  MissingSettingsMsg := MsgBox("The " . SettingsIni . " file doesn't exist!")  
  ExitApp 
}

Loop 
{
  StartupApp := IniRead(SettingsIni, "autostart", "sFilePath" . A_Index, "INVALID")
  If (StartupApp == "INVALID") ; key-value pair doesn't exist
  {
    ExitApp 
  }
  Else If (StartupApp != "" && FileExist(UserProfile . StartupApp)) ; The key-value pair is a valid path that leads to an existing file 
  {
    StartupApp := UserProfile . StartupApp 
    Run StartupApp
  }
}

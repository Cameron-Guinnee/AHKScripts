; AutoStart.ahk
; AutoHotkey v2.0 
; This is a lightweight AutoHotkey script that will launch every AutoHotkey script the user defines in the autostart section of "Documents/My Autohotkey Scripts/settings.ini" 
#Requires AutoHotkey v2.0
#SingleInstance Force

; Base paths
userProfile := EnvGet("USERPROFILE")
scriptsDir  := userProfile "\Documents\My AutoHotkey Scripts"
settingsIni := scriptsDir "\settings.ini"

; Ensure scripts directory exists
if !DirExist(scriptsDir) {
    DirCreate scriptsDir
    MsgBox "Created folder:`n" scriptsDir "`n" 
        . "Add your scripts there and edit settings.ini."
}

; Ensure settings.ini exists
if !FileExist(settingsIni) {
    defaultIni :=
    (
    [autostart]
    ; Paths can be absolute (e.g. C:\path\to\script.ahk)
    ; or relative to %USERPROFILE% (e.g. \Documents\My AutoHotkey Scripts\script.ahk)
    sFilePath1=\Documents\My AutoHotkey Scripts\example.ahk
    )
    FileAppend defaultIni, settingsIni, "UTF-8"
    MsgBox "Created default settings.ini:`n" settingsIni
}

; Loop through sFilePath1, sFilePath2, ...
index := 1
while true {
    keyName    := "sFilePath" index
    startupApp := IniRead(settingsIni, "autostart", keyName, "INVALID")

    if (startupApp = "INVALID")
        break  ; no more entries

    if (startupApp = "") {
        index++
        continue
    }

    ; If the path doesn't contain a drive letter, treat it as relative to %USERPROFILE%
    fullPath := InStr(startupApp, ":") ? startupApp : userProfile startupApp

    if FileExist(fullPath) {
        try Run fullPath
    } else {
        MsgBox "Configured path not found:`n" fullPath
    }

    index++
}

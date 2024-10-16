$Appfullpath = '.exe'
$Shortcutfullpath = '.lnk'

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Shortcutfullpath")
$Shortcut.TargetPath = "$Appfullpath"
$Shortcut.Save() 
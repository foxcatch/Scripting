$lanlist = Get-WinUserLanguageList
$lanlist.add("zh-Hans-CN")
Set-WinUserLanguageList $lanlist -Force

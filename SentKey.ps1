$shell = New-Object -ComObject "Wscript.Shell"
while($True){
Start-Sleep -Seconds 90
$shell.SendKeys(" ")
Write-Host 'Running' -ForegroundColor Cyan
}
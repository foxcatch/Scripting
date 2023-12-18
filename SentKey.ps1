Write-Host 'Job start'

$shell = New-Object -ComObject "Wscript.Shell"
    
while($True)
{
# Start-Sleep -Seconds 100
Start-Sleep -Seconds 200
Write-Host "Running ..."
# $shell.SendKeys(" 0")
$shell.SendKeys(" ")
}
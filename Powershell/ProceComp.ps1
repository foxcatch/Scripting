Get-Process | Export-Clixml -Path "$env:USERPROFILE\NormalClient.xml"
Compare-Object -ReferenceObject (Import-Clixml .\good.xml) -DifferenceObject (Get-Process) -Property name
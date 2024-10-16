do{
    $11 = Read-Host
    $22 = Read-Host
    $1 = Get-FileHash -Path $11
    $2 = Get-FileHash -Path $22
if($1.Hash -eq $2.Hash){
    Write-Host "EQ"
    }
else{
    Write-Host "Diff"
    }
Pause
}
while(1 -eq $True)


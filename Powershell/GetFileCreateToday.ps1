$path= 'C:\Users'
$1 = Get-ChildItem -Path $path
$2 = Get-Date -Format "M/d/yyyy" 
foreach($3 in $1){
if($3.LastWriteTime.ToShortDateString() -eq $2){Write-Host $3.FullName}
}

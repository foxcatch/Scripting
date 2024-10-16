$d = Get-Date
1..36000 | ForEach-Object -Begin{$C = ''} -Process{$d=$d.AddDays(-1)}{$C = $C+','+'ay'+$($d.ToString('yyyyMMdd'))} -End{$c -split ',' | Out-File -FilePath '.\8.txt'}

<#
6
$C = $C+','+$($d.ToString('yyMMdd'))
#>

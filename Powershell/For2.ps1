# Get history data
$uri = 'https://kaijiang.zhcw.com/zhcw/html/ssq/list_'
# export data 
1..159 | ForEach-Object -Begin{} -Process{$url = $uri+$($_.ToString())+'.html'}{$File = $url.remove(0,45)}{Invoke-RestMethod -Method Get -Uri $url -OutFile $File} -End{}

$path = 'C:\Users\qs02114248\Documents\BlueTeeth'
(Get-Content -Path $path$\1.html -TotalCount 12)[-5,-1]
(Get-Content -Path $path\1.html -Tail -20)[-4,-2]


1..159

$1 = Get-Content -Path "$path\1.html" -Delimiter '<tr>'
$1 = $1[2..21]
$1 = $1 | %{$_.remove(530).replace('<td align="center" style="padding-left:10px;">','').replace(' ','').replace("`r`n",'').remove(0,18)}
$1 = $1 | %{$_.replace('</em>',' ').replace("/",'').replace('<emclass="rr">','').replace('<em>','')}
$1 -split '<td>' | Select-String -Pattern "\d{2} \d{2} \d{2} \d{2} \d{2} \d{2} \d{2} " >> .\history.txt

<#
$1 = $1 | %{$_.remove(530).replace('<td align="center" style="padding-left:10px;">','').replace(' ','').replace("`r`n",'').remove(0,18)}
$1 = $1 | %{$_.replace('</em><emclass="rr">',' ').replace('/','').replace('<td>','').replace('<strong>','').replace('<tdalign="center">',' ').replace('<emclass="rr">',' ').replace('<em>',' ')}
#>

Out-File -FilePath ".\history.txt" -InputObject $1

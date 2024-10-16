$GenerateNew = for($4 =0 ; $4 -lt 26; $4++){
        for($3 =0 ; $3 -lt 11; $3++){
        $5 = Get-Random -Minimum 3 -Maximum 9
        $6 = Get-Random -Minimum 3 -Maximum 9
        "$5 X $6 =(     ) "
        }
        " K"
        }
#write-host "`n"
$1 = Out-String -InputObject $GenerateNew
$1 = $1 -Replace "`r`n"," "
$1 = $1 -Replace "K ","`r"
$1 | Format-Wide -Column 20| Out-File $env:USERPROFILE\Desktop\Math.txt
 

<#
$GenerateNew = for($4 =0 ; $4 -lt 26; $4++){
        for($3 =0 ; $3 -lt 10; $3++){
        $5 = Get-Random -Minimum 10 -Maximum 99
        $6 = Get-Random -Minimum 10 -Maximum 99
        "$5+$6 =(     ) "
        }
        "$5+$6 =(     ) K"
        }
#write-host "`n"
$1 = Out-String -InputObject $GenerateNew
$1 = $1 -Replace "`r`n"," "
$1 = $1 -Replace "K ","`r"
$1 | Format-Wide -Column 20| Out-File $env:USERPROFILE\Desktop\Math.txt
#>


<#For divided test
$GenerateNew = for($4 =0 ; $4 -lt 26; $4++){
        for($3 =0 ; $3 -lt 10; $3++){
        $5 = Get-Random -Minimum 2 -Maximum 9
        $6 = Get-Random -Minimum 2 -Maximum 9
        $7 = $5*$6
        "{0:00} ÷ $6 =(     ) " -f ($7)
        }
        " K"
        }
#write-host "`n"
$1 = Out-String -InputObject $GenerateNew
$1 = $1 -Replace "`r`n"," "
$1 = $1 -Replace "K ","`r"
$1 | Format-Wide -Column 20| Out-File $env:USERPROFILE\Desktop\Math.txt
#>
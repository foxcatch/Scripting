$TarPath = "$ENV:USERPROFILE\Desktop\Num.html"

    $Hi="Are you ready ? ; Let`s go ! <br></br>" | Out-File -FilePath $TarPath -Append
for ($1 =1; $1 -lt 21; $1++)
{
    $var = Get-Random -Maximum 2050
    "<br>The Group, $1; </br><br> $var;<br></br> $var; <br></br>$var; </br><br></br>" | Out-File -FilePath $TarPath -Append
}
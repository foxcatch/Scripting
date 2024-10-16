$1 = Select-String -Path 'C:\Users\WDAGUtilityAccount\Desktop\ce\SaiyukiChinese.CT' -Pattern '<Description>"\w+"</Description>'
$2 = Select-String -Path 'C:\Users\WDAGUtilityAccount\Desktop\ce\SaiyukiChinese.CT' -Pattern '<Address>ePSXe.exe\+\w+</Address>'
$1 = $1.matches.value
$2 = $2.matches.value

$re = ""
for($c=0; $c -lt 125; $c++){
$re = $re+$1[$c]+" "+$2[$c]+"`n"
}
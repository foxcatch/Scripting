Write-Host "我写下了一个数字，猜猜我是几？" -ForegroundColor Red
$answer = ""
$Num = Get-Random -Minimum 0 -Maximum 99
$answer = Read-Host "输入数字，按回车" 
if($answer -in 0..99){   
        while($answer -ne $Num)
{
    if($answer -gt $Num){
    Write-Host "大了" -ForegroundColor Yellow    
    $answer = Read-Host "输入数字，按回车"
}else{
    if($answer -lt $Num){
    Write-Host "小了" -ForegroundColor Cyan
    $answer = Read-Host "输入数字，按回车"
    }else{
    Write-Host "对了" -ForegroundColor Green
    }
}
}
Write-Host "对了,恭喜！！！" -ForegroundColor Green
}else{
"输入了错误的数字！！" 
}


function Print-RotateMatrix([int]$N)
{
 if($N -lt 1) {
  return
 }

 #数组初始化
 $array=new-object 'int[,]' $N,$N

 #矩阵的元素个数
 $maxNumbers=[math]::Pow($N,2)

 # 矩阵赋值
 $count=1
 $i=0
 $j=0 
 while($count -le $maxNumbers)
 {
  #往下赋值
  while( ($j -lt $N) -and ($array[$i,$j] -eq 0))
  {
   $array[$i,$j]=$count
   $count++
   $j++
  }
  $j--
  $i++
  
  #往右赋值
  while( ($i -lt $N) -and ($array[$i,$j] -eq 0))
  {
   $array[$i,$j]=$count
   $count++
   $i++
  }
  $j--
  $i--

  #往上赋值
  while( ($j -ge 0) -and ($array[$i,$j] -eq 0))
  {
   $array[$i,$j]=$count
   $count++
   $j--
  }
  $j++
  $i--
  #往左赋值
  while( ($i -ge 0) -and ($array[$i,$j] -eq 0))
  {
   $array[$i,$j]=$count
   $count++
   $i--
  }
  $i++
  $j++
 }

 # 打印矩阵
 for($i=0;$i -lt $N;$i++){
  for($j=0;$j -lt $N;$j++){
  Write-Host $array[$j,$i] -NoNewline
  Write-Host "`t" -NoNewline
  }
  Write-Host "`n" -NoNewline
 }
}
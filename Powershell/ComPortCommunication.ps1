# 调用类 静态方法
[System.IO.Ports.SerialPort]::GetPortNames()

$1 ='string'
$port=New-Object System.IO.Ports.SerialPort COM3,9600,None,8,one
$port.open()
$port.WriteLine($1)
$2 =$port.ReadLine()
do {$2} while ($port.IsOpen)
$port.Close()
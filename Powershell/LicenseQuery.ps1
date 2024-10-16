$1 = Get-WmiObject -query 'select * from SoftwareLicensingService'
$1.OA3xOriginalProductKey >> c:\users\$env:username\desktop\$env:COMPUTERNAME.txt
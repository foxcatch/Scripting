(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey >> c:\users\$env:username\desktop\$env:COMPUTERNAME.txt
#xcopy c:\users\$env:username\desktop\$env:COMPUTERNAME.txt s:\\C015243\Users\dec_it\Shared
Remove-Item c:\users\$env:username\desktop\PSLicenseScript.ps1
# copy c:/users/$env:username/desktop/win10license.txt D:\Sean_c\License
# pause
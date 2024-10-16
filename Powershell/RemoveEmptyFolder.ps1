$target_path = 'C:\Users\Desktop\Calibre 书库'
$target_dir =  Get-ChildItem -Recurse -Directory -Path $target_path | Where-Object -FilterScript {($_.GetFiles().Count -eq 0 )-and ($_.GetDirectories().Count -eq 0)}
Remove-Item -Path $target_dir
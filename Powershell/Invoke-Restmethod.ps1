$UA = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.70'
$url = 'https://www.haoshudi.com/'
$re = Invoke-RestMethod -Method Get -Uri $url -UserAgent $UA 

$re -like "*.mp4"

if ("$re" -match 'mp4') {
    $Matches
}
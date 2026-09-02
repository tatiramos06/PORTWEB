$wc = New-Object System.Net.WebClient
$bytes = $wc.DownloadData('https://raw.githubusercontent.com/tatiramos06/PORTWEB/main/index.html')
$text = [System.Text.Encoding]::UTF8.GetString($bytes)
$lines = $text -split "`n"
foreach ($line in $lines) {
    if ($line -like "*Experi*" -or $line -like "*solu*" -or $line -like "*Quem Sou*") {
        Write-Host $line
    }
}

$text = [System.IO.File]::ReadAllText("c:\Users\win\Documents\TATIANA\POTFOLIO\index.html", [System.Text.Encoding]::UTF8)
$text -split "`n" | Where-Object { $_ -match "solu" -or $_ -match "Experi" -or $_ -match "Quem Sou" -or $_ -match "Forma" } | ForEach-Object {
    Write-Host $_
}

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8080/")
$listener.Start()
Write-Host "Server listening on http://localhost:8080/"

$htmlPath = "c:\Users\win\Documents\TATIANA\POTFOLIO\index.html"

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $response = $context.Response
        $request = $context.Request
        
        $htmlBytes = [System.IO.File]::ReadAllBytes($htmlPath)
        $response.ContentType = "text/html; charset=utf-8"
        $response.ContentLength64 = $htmlBytes.Length
        $response.OutputStream.Write($htmlBytes, 0, $htmlBytes.Length)
        $response.Close()
    } catch {
        # continue listening
    }
}

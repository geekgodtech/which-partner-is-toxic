$langs = @(
    @("es", "Spanish"),
    @("fr", "French"),
    @("pt", "Portuguese"),
    @("de", "German"),
    @("it", "Italian"),
    @("ja", "Japanese"),
    @("ko", "Korean"),
    @("zh", "Chinese (Simplified)"),
    @("ar", "Arabic"),
    @("hi", "Hindi"),
    @("tr", "Turkish"),
    @("ru", "Russian"),
    @("nl", "Dutch"),
    @("pl", "Polish"),
    @("uk", "Ukrainian")
)

Set-Location "C:\My Projects\AIRTA"
foreach ($pair in $langs) {
    $lc = $pair[0]
    $name = $pair[1]
    Write-Host "Translating $lc ($name)..."
    python translate_new_packs.py $lc $name
    Start-Sleep -Seconds 1
}
Write-Host "All languages done!"

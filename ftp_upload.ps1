$ftpUrl = "ftp://10.0.0.131:2121/which_partner_is_toxic.apk"
$localFile = "c:\My Projects\Which partner is toxic\which_partner_is_toxic\build\app\outputs\flutter-apk\app-release.apk"
$username = "android"
$password = "android"

try {
    $webclient = New-Object System.Net.WebClient
    $webclient.Credentials = New-Object System.Net.NetworkCredential($username, $password)
    $webclient.UploadFile($ftpUrl, $localFile)
    Write-Host "Upload successful!"
} catch {
    Write-Host "Upload failed: $_"
}

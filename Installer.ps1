# URL van de ScreenConnect installer
$installerUrl = "https://janhenk.screenconnect.com/Bin/ScreenConnect.ClientSetup.exe?e=Access&y=Guest"

# Pad waar de installer tijdelijk wordt opgeslagen
$tempInstallerPath = "$env:TEMP\installer.exe"

# Download de installer
Invoke-WebRequest -Uri $installerUrl -OutFile $tempInstallerPath

# Voer de installer uit in stille modus
Start-Process -FilePath $tempInstallerPath -ArgumentList "/S" -Wait

# Verwijder de installer na installatie
Remove-Item -Path $tempInstallerPath -Force


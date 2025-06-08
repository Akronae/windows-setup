Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation

choco install -y googlechrome firefox brave vscode notepad2 cygwin qbittorrent powertoys slack discord sharex mongodb-compass microsoft-windows-terminal parsec vlc bulk-crap-uninstaller 7zip 
choco install coreutils zsh --source=cygwin

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\tools\cygwin\bin;", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\bin;", "Machine")

# Set short date format to ISO 8601 (yyyy-MM-dd)
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name "sShortDate" -Value "yyyy-MM-dd"
# Set time format to 24-hour (HH:mm:ss)
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name "sShortTime" -Value "HH:mm"
Set-ItemProperty -Path "HKCU:\Control Panel\International" -Name "sTimeFormat" -Value "HH:mm:ss"

remove-item alias:curl
remove-item alias:nano
remove-item alias:rm

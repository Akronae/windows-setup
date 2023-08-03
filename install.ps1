Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation

choco install -y git nvm nano curl googlechrome firefox brave vscode notepad2 cygwin qbittorrent powertoys slack sharex mongodb-compass microsoft-windows-terminal parsec vlc bulk-crap-uninstaller 7zip youtube-dl
choco install coreutils zsh --source=cygwin

remove-item alias:curl
remove-item alias:nano

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\tools\cygwin\bin;", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\bin;", "Machine")

New-Item $profile -force -itemtype file
"remove-item alias:sleep -Force" | Out-File $profile

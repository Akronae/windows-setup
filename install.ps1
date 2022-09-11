Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install git nvm nano googlechrome firefox vscode notepad2 cygwin qbittorrent
choco install coreutils --source=cygwin

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\tools\cygwin\bin;", "Machine")

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco feature enable -n allowGlobalConfirmation

choco install git nvm nano curl googlechrome firefox brave vscode notepad2 cygwin qbittorrent powertoys veracrypt
choco install coreutils --source=cygwin

remove-item alias:curl
remove-item alias:nano

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\tools\cygwin\bin;", "Machine")

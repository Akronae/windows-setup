Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install git nvm nano googlechrome firefox vscode notepad2 cygwin
choco install coreutils --source=cygwin

$Env:PATH += ";C:\tools\cygwin\bin;"

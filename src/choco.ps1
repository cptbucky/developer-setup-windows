# browsers
choco install -y googlechrome
choco install -y firefox

# source control
cinst -y git.install
cinst -y gitextensions

# editors / ide
cinst -y vscode
cinst -y cmder

# dev tools
cinst -y postman
cinst -y docker-for-windows
cinst -y vscode-docker

# system tools
cinst -y 7zip
cinst -y ccleaner
cinst -y sysinternal

# node
cinst -y nodejs-lts # Node.js LTS, Recommended for most users

# python
cinst -y python
refreshenv
python -m pip install --upgrade pip

# netcore
cinst -y dotnetcore-sdk
cinst -y nuget.commandline

# ruby
cinst -y ruby

Install-Module posh-git

# view hidden files
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f

# view file extensions
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f

# enable hyper-v (requires restart)
Enable-WindowsOptionalFeature -Online -FeatureName:Microsoft-Hyper-V -All
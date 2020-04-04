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
choco install -y docker-for-windows
choco install -y vscode-docker

# system tools
cinst -y 7zip
cinst -y ccleaner
cinst -y sysinternal

# frameworks
cinst -y nodejs-lts # Node.js LTS, Recommended for most users
cinst -y python
# Refresh path
refreshenv
# Update pip
python -m pip install --upgrade pip

# view hidden files
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f

# view file extensions
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f

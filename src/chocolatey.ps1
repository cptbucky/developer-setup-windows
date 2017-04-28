# install chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# install lots of apps via chocolatey
cinst git.install
cinst -y googlechrome
cinst -y firefox
cinst -y nodejs.install
cinst -y atom
cinst -y fiddler4
cinst -y 7zip
cinst -y wget
cinst -y curl
cinst -y dotnetcore
cinst -y gitkraken
cinst -y postman
#faced issues with cmder possibly due to the vm sleeping..
cinst -y cmder
cinst -y docker-for-windows
cinst -y dotnetcore-sdk
cinst -y ccleaner
cinst -y sysinternals
cinst -y microsoft-build-tools
cinst -y nuget.commandline

Install-Module posh-git

# create dev directory
mkdir c:\dev

# get latest atom config
Remove-Item -Recurse -Force ~\.atom
git clone https://github.com/cptbucky/config-atom.git .atom

# setup task bar with shortcuts

# view hidden files
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f

# view file extensions
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f

# enable hyper-v (requires restart)
Enable-WindowsOptionalFeature -Online -FeatureName:Microsoft-Hyper-V -All

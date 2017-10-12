# install lots of apps via chocolatey
cinst git.install
cinst -y googlechrome
cinst -y atom
cinst -y 7zip
cinst -y postman
cinst -y smartgit
cinst -y gitextensions
#faced issues with cmder possibly due to the vm sleeping..
cinst -y cmder
cinst -y ccleaner
cinst -y sysinternals
cinst -y microsoft-build-tools
cinst -y nuget.commandline

Install-Module posh-git

# create dev directory
mkdir c:\dev

# get latest atom config
#Remove-Item -Recurse -Force ~\.atom
#git clone https://github.com/cptbucky/config-atom.git .atom

# setup task bar with shortcuts

# view hidden files
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f

# view file extensions
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f

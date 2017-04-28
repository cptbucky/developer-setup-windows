Set-ExecutionPolicy AllSigned

iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
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
cinst -y cmder
cinst -y docker-for-windows
cinst -y dotnetcore-sdk
cinst -y ccleaner
cinst -y sysinternals
cinst -y microsoft-build-tools
cinst -y nuget.commandline

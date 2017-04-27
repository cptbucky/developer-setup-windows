Set-ExecutionPolicy AllSigned

iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
cinst git.install

#Start new powershell process to insatll all choclatey packages
$packageInstallProcess = Start-Process `
    -FilePath "C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe" `
    -ArgumentList @("/q", "/norestart", "packages.ps1") `
    -PassThru `
    -RedirectStandardOutput "packageInstallProcess.log" `
    -RedirectStandardError $true

$packageInstallProcess.WaitForExit()

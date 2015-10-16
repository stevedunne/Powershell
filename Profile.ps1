
#execute this file from your profile (ise and regular) to load the various functions
#and helpers into your powershell session

. C:\Code\Powershell\VsVars.ps1

#add Git to the env path
$gitInstallDir = "C:\Program Files (x86)\Git\bin"
if(!$env:path.Contains($gitInstallDir) ){
    $env:path = $env:path + ";$gitInstallDir"
    Write-Host "Added GIT to env path"
}

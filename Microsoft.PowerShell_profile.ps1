# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
Import-Module posh-git
Import-Module posh-docker
function prompt { 
    $realLASTEXITCODE = $LASTEXITCODE
    Write-Host ($PWD.ProviderPath) -NoNewline
    Write-VcsStatus
    Write-Host
    $global:LASTEXITCODE = $realLASTEXITCODE
    return "$([char]0x26A1) "
}

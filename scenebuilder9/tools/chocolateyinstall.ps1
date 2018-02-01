$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'SceneBuilder-9.0.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  file          = $fileLocation

  softwareName  = 'SceneBuilder*'

  checksum      = '0B51FEFB6F744C6FB12BF0BC22D2496D1944D2E45476098BDC8C416B64785A7C'
  checksumType  = 'sha256'

  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download2.nyc3.digitaloceanspaces.com/scenebuilder/8.4.1/install/windows/x86/SceneBuilder-8.4.1.exe'
$url64 = 'https://download2.nyc3.digitaloceanspaces.com/scenebuilder/8.4.1/install/windows/x64/SceneBuilder-8.4.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url			= $url
  url64			= $url64

  softwareName  = 'SceneBuilder*'

  checksum      = '3BDE288330BA5C58D4FC698AB2157D7EA4D080F1C43F4A8285A43F9AD5F54B3F'
  checksumType  = 'sha256'
  checksum64    = '0A5D591CBB2DECC87D9DA98010B28157F14BD7198C158905597CAB734CF8EE09'
  checksumType64= 'sha256'

  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
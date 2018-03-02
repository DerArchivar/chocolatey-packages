$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Nexus.Mod.Manager-0.64.2.exe'

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	fileType      = 'exe'
	file          = $fileLocation

	softwareName  = 'Nexus Mod Manager'

	checksum      = '09FD6AA3F435B8CADFB8D06128B1B0F57B5E2D89D06987B1A73E1E6011806153'
	checksumType  = 'sha256'

	silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
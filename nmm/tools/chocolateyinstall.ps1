$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Nexus.Mod.Manager-0.64.3.exe'

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	fileType      = 'exe'
	file          = $fileLocation

	softwareName  = 'Nexus Mod Manager'

	checksum      = '77212267A706D1D0717F10EB5F61D626FFF8B255F3E9405992818D9151A5D6DA'
	checksumType  = 'sha256'

	silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
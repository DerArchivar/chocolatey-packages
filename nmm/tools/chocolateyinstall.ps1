$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Nexus.Mod.Manager-0.64.1.exe'

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	fileType      = 'exe'
	file          = $fileLocation

	softwareName  = 'Nexus Mod Manager'

	checksum      = '2B128CBCC8CD5C28C65F5BB6DBA2AD72CFC5E79D8C8C6081012AA310AB92A0D8'
	checksumType  = 'sha256'

	silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'LOOT.Installer.exe'

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	fileType      = 'exe'
	file          = $fileLocation

	softwareName  = 'LOOT'

	checksum      = '98B04A3118F12306F35D4EF8948F5F8A8D62B80702326D0FA36391E34DB9AC16'
	checksumType  = 'sha256'

	silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
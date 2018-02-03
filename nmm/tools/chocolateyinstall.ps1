$ErrorActionPreference = 'Stop';

if ([Environment]::OSVersion.Version -lt "6.0") {
	throw "Windows version not supported! On Windows versions before Vista, please install the legacy package by entering 'choco install nmm-legacy'."
}

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Nexus.Mod.Manager-0.63.19.exe'

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	fileType      = 'exe'
	file          = $fileLocation

	softwareName  = 'Nexus Mod Manager'

	checksum      = '8BB19D2F7A7532386D8A2EDAB444ADBCB5D8069B18C86A2781C5242D2758AF64'
	checksumType  = 'sha256'

	silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
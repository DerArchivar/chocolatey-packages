$ErrorActionPreference = 'Stop';

if ([Environment]::OSVersion.Version -ge "6.0") {
	throw "Windows version not supported! On Windows versions Vista and later, please install the main package by entering 'choco install nmm'."
}

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Nexus.Mod.Manager-legacy-0.52.3'

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	fileType      = 'exe'
	file          = $fileLocation

	softwareName  = 'Nexus Mod Manager - Legacy'

	checksum      = 'C2CB060562132B515D1C5C066382F475537124B64EC24131D9D3D4E738E66616'
	checksumType  = 'sha256'

	silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
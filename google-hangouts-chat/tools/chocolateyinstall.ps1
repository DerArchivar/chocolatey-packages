$ErrorActionPreference = 'Stop';
$url = 'https://dl.google.com/chat/18.2.252/InstallHangoutsChat.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url			= $url

  softwareName  = 'Hangouts Chat'

  checksum      = 'E8960878A177CE0738CAF2DCEAE716070C1148792689C220699BCED06763720C'
  checksumType  = 'sha256'

  silentArgs    = '/quiet /norestart'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
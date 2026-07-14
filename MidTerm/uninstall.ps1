# Legacy MidTerm uninstaller path.
$uninstaller = [scriptblock]::Create([string](Invoke-RestMethod 'https://get.tlbx.ai/uninstall.ps1'))
& $uninstaller
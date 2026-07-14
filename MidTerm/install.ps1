# Legacy MidTerm installer path. tlbx currently uses the verified transition channel.
param([switch]$Dev)
$installer = [scriptblock]::Create([string](Invoke-RestMethod 'https://get.tlbx.ai/install.ps1'))
& $installer -Dev
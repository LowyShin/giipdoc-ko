$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Join-Path $root '..'
$wikiDir = Join-Path $repoRoot 'docs/wiki'
$mapPath = Join-Path $wikiDir '_renames.json'

if (-not (Test-Path $mapPath)) { Write-Host "No rename map found: $mapPath"; exit 0 }

$entries = Get-Content -Path $mapPath | ConvertFrom-Json
if ($entries -is [Array]) { $list = $entries } else { $list = @($entries) }

foreach($e in $list){
  $newPath = Join-Path $wikiDir $e.new
  $oldPath = Join-Path $wikiDir $e.old
  if (Test-Path $newPath) {
    # Resolve conflict if oldPath already exists
    $target = $oldPath
    if (Test-Path $target) {
      $base = [System.IO.Path]::GetFileNameWithoutExtension($e.old)
      $i = 2
      do {
        $candidate = Join-Path $wikiDir ("{0}-orig-{1}.md" -f $base,$i)
        $i++
      } while (Test-Path $candidate)
      $target = $candidate
    }
    Move-Item -LiteralPath $newPath -Destination $target -Force
    Write-Host ("Reverted: {0} -> {1}" -f $e.new,([System.IO.Path]::GetFileName($target)))
  } else {
    Write-Host ("Skip missing: {0}" -f $e.new)
  }
}

Remove-Item -LiteralPath $mapPath -Force
Write-Host "Removed map: $mapPath"

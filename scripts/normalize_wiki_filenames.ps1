param(
  [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Join-Path $root '..'
$wikiDir = Join-Path $repoRoot 'docs/wiki'
$archiveDir = Join-Path $wikiDir '_archive'

if (-not (Test-Path $wikiDir)) { throw "Wiki directory not found: $wikiDir" }

function SanitizeFile([string]$name){
  $base = [System.IO.Path]::GetFileNameWithoutExtension($name)
  $ext = [System.IO.Path]::GetExtension($name)
  $s = $base
  $s = $s -replace '\s+','-'
  $s = $s -replace '[\\/:*?"<>|]',''   # remove illegal on Windows/GitHub
  $s = $s -replace '-+','-'
  $s = $s.Trim('-')
  if([string]::IsNullOrWhiteSpace($s)){ $s = 'doc' }
  return ($s.ToLowerInvariant() + $ext.ToLowerInvariant())
}

$exclude = @('README.md','_Footer.md','_Sidebar.md','INDEX.md')
$files = Get-ChildItem $wikiDir -File -Filter '*.md' | Where-Object { $_.Name -notin $exclude }

$renames = @()
foreach($f in $files){
  if($f.DirectoryName -eq $archiveDir){ continue }
  $newName = SanitizeFile $f.Name
  if($newName -eq $f.Name){ continue }
  $target = Join-Path $wikiDir $newName
  $i=2
  while(Test-Path $target){
    $target = Join-Path $wikiDir ("{0}-{1}{2}" -f ([System.IO.Path]::GetFileNameWithoutExtension($newName)),$i,[System.IO.Path]::GetExtension($newName))
    $i++
  }
  if(-not $DryRun){ Move-Item -LiteralPath $f.FullName -Destination $target -Force }
  $renames += [PSCustomObject]@{ old = $f.Name; new = [System.IO.Path]::GetFileName($target) }
  Write-Host ("Renamed: {0} -> {1}" -f $f.Name,([System.IO.Path]::GetFileName($target)))
}

if(($renames | Measure-Object).Count -gt 0){
  $mapPath = Join-Path $wikiDir '_renames.json'
  $renames | ConvertTo-Json -Depth 4 | Set-Content -Path $mapPath -Encoding UTF8
  Write-Host "Wrote rename map: $mapPath"
} else {
  Write-Host "No files renamed."
}

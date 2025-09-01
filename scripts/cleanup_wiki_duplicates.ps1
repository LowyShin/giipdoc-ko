$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Join-Path $root '..'
$wikiDir = Join-Path $repoRoot 'docs/wiki'
$archiveDir = Join-Path $wikiDir '_archive'

if (-not (Test-Path $wikiDir)) { throw "Wiki directory not found: $wikiDir" }
New-Item -ItemType Directory -Path $archiveDir -Force | Out-Null

# Heuristics: mark files with trailing dashes/placeholder punctuation or duplicated variants (윈도우/윈도우즈), keep the most common one.
$candidates = @(
    '*---------------.md',
    '*--------------.md',
    '*--------------*.md',
    '빠른시작(윈도우즈).md'
)

foreach ($pattern in $candidates) {
    Get-ChildItem $wikiDir -Filter $pattern -File | ForEach-Object {
        $src = $_.FullName
        $dst = Join-Path $archiveDir $_.Name
        Move-Item -LiteralPath $src -Destination $dst -Force
        Write-Host "Archived: $($_.Name)"
    }
}

# Deduplicate exact duplicates by hash
$files = Get-ChildItem $wikiDir -File -Filter '*.md'
$hashMap = @{}
foreach ($f in $files) {
    $hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $f.FullName).Hash
    if ($hashMap.ContainsKey($hash)) {
        $dst = Join-Path $archiveDir $f.Name
        Move-Item -LiteralPath $f.FullName -Destination $dst -Force
        Write-Host "Archived duplicate: $($f.Name)"
    } else { $hashMap[$hash] = $f.Name }
}

Write-Host "Cleanup complete. Archived files are in: $archiveDir"

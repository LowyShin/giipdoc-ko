$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Join-Path $root '..'
$wikiDir = Join-Path $repoRoot 'docs/wiki'

if (-not (Test-Path $wikiDir)) {
        throw "Wiki directory not found: $wikiDir"
}

# Collect markdown files (exclude meta files)
$files = Get-ChildItem $wikiDir -File -Filter '*.md' |
        Where-Object { $_.Name -notin @('README.md','_Footer.md','_Sidebar.md','INDEX.md') }

# Category rules (regex, case-insensitive)
$catRules = @{
    '시작하기' = @(
        '^(home)$','빠른.?시작','quick\s*start','giip개요','giip\s*개요','giip에-서버-등록','giip-agent설치','secret\s*key','메뉴설명'
    );
    '특징' = @(
        '^kvs','^cqe','^mqe','^api','custom-?dashboard','giip-기능','giip-아키텍쳐','json-?to-?html','kvs(graph|_?)','giipapi','giipagent_for_ahk','giipagent_download','kvs-graph','kvs-put'
    );
    '세부메뉴' = @(
        '세부.?메뉴','analytics-?dashboard','custom-?menu','logical-?servers','all-?factors','script-?(repository|market|설치|등록|bought|queued|add)','projects','services','users','infra\.?-?provider','trigger','domain','user-관리','secret-?key'
    );
}

function Get-Category([string]$name,[string]$title){
    $n = $name.ToLower()
    $t = $title.ToLower()
    foreach($cat in '시작하기','특징','세부메뉴'){
        foreach($rx in $catRules[$cat]){
            if($n -match $rx -or $t -match $rx){ return $cat }
        }
    }
    return '기타'
}

$items = @()
foreach ($f in $files) {
        $title = $null
        $lines = Get-Content -Path $f.FullName -ErrorAction SilentlyContinue -TotalCount 50
        foreach ($line in $lines) {
                $trim = $line.Trim()
                if ($trim -match '^#\s*(.+)') { $title = $matches[1].Trim(); break }
                if ($trim -ne '') { $title = [System.IO.Path]::GetFileNameWithoutExtension($f.Name); break }
        }
        if (-not $title) { $title = [System.IO.Path]::GetFileNameWithoutExtension($f.Name) }
        $rel = 'docs/wiki/' + $f.Name
        $cat = Get-Category ([System.IO.Path]::GetFileNameWithoutExtension($f.Name)) $title
        $items += [PSCustomObject]@{ file = $f.Name; path = $rel; title = $title; category = $cat }
}

# Group and sort within category by title
$order = @('시작하기','특징','세부메뉴','기타')
$byCat = @{}
foreach($cat in $order){ $byCat[$cat] = @() }
foreach($it in $items){ $byCat[$it.category] += ,$it }
foreach($cat in $order){ $byCat[$cat] = $byCat[$cat] | Sort-Object @{ Expression = { $_.title } }, @{ Expression = { $_.file } } }

# Write Markdown index
$mdPath = Join-Path $wikiDir 'INDEX.md'
"# 위키 문서 목차`n> 자동 분류: 시작하기 / 특징 / 세부메뉴 / 기타`n" | Set-Content -Path $mdPath -Encoding UTF8
foreach($cat in $order){
    if(($byCat[$cat] | Measure-Object).Count -eq 0){ continue }
    "`n## $cat`n" | Add-Content -Path $mdPath -Encoding UTF8
    foreach($it in $byCat[$cat]){
        "- [$($it.title)](./$($it.file))" | Add-Content -Path $mdPath -Encoding UTF8
    }
}

# Write JSON index for automation
$jsonPath = Join-Path $wikiDir '_index.json'
$items | Sort-Object @{ Expression = { [Array]::IndexOf($order,$_.category) } }, @{ Expression = { $_.title } } |
    ConvertTo-Json -Depth 4 | Set-Content -Path $jsonPath -Encoding UTF8

Write-Host "Generated: $mdPath"
Write-Host "Generated: $jsonPath"

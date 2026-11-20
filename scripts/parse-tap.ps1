param(
    [string]$InputFile = "artifacts\pgprove-sample.log"
)

if (-not (Test-Path $InputFile)) {
    Write-Error "No existe: $InputFile"
    exit 1
}

$content = Get-Content $InputFile -Raw

$suite =
    if ($content -match "([^\r\n]+\.sql)") {
        $Matches[1]
    } else {
        $null
    }

$files =
    if ($content -match "Files=([0-9]+)") {
        [int]$Matches[1]
    } else {
        0
    }

$tests =
    if ($content -match "Tests=([0-9]+)") {
        [int]$Matches[1]
    } else {
        0
    }

$result =
    if ($content -match "Result:\s*([A-Z]+)") {
        $Matches[1]
    } else {
        "UNKNOWN"
    }

$output = @{
    suite  = $suite
    files  = $files
    tests  = $tests
    result = $result
    passed = ($result -eq "PASS")
}

$output | ConvertTo-Json
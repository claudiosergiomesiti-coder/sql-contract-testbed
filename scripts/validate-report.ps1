$report =
    Get-Content `
        artifacts\validation-report.json `
        -Raw |
    ConvertFrom-Json

$errors = @()

if (-not $report.status) {
    $errors += "Falta status"
}

if (-not $report.timestamp) {
    $errors += "Falta timestamp"
}

if (-not $report.tap) {
    $errors += "Falta tap"
}

if (-not $report.versions) {
    $errors += "Falta versions"
}

if (-not $report.tap.tests) {
    $errors += "Falta tap.tests"
}

if ($null -eq $report.tap.passed) {
    $errors += "Falta tap.passed"
}

if ($errors.Count -eq 0) {

    Write-Host "VALID"

}
else {

    Write-Host "INVALID"

    $errors

    exit 1

}
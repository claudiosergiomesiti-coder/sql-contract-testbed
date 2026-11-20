New-Item `
    -ItemType Directory `
    -Force `
    artifacts | Out-Null

Set-Content `
    artifacts\postgres-version.txt `
    "PostgreSQL 16.0 (SIMULATED)"

Set-Content `
    artifacts\pgtap-version.txt `
    "1.3.3"

Set-Content `
    artifacts\pgprove-version.txt `
    "pg_prove 3.44"

@"
sql/V000__smoke_test.sql .. ok
All tests successful.
Files=1, Tests=1
Result: PASS
"@ |
Set-Content `
    artifacts\pgprove-sample.log

Write-Host "Artifacts generated"
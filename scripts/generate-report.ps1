$postgres =
    Get-Content artifacts\postgres-version.txt -Raw

$pgtap =
    Get-Content artifacts\pgtap-version.txt -Raw

$pgprove =
    Get-Content artifacts\pgprove-version.txt -Raw

$tap =
    .\scripts\parse-tap.ps1 |
    ConvertFrom-Json

$report = @{

    timestamp =
        (Get-Date).ToString("s")

    status =
        if ($tap.passed)
        {
            "passed"
        }
        else
        {
            "failed"
        }

    versions = @{

        postgres =
            $postgres.Trim()

        pgtap =
            $pgtap.Trim()

        pgprove =
            $pgprove.Trim()

    }

    tap = @{

        suite  = $tap.suite
        files  = $tap.files
        tests  = $tap.tests
        result = $tap.result
        passed = $tap.passed

    }

}

$report |
ConvertTo-Json -Depth 10 |
Set-Content artifacts\validation-report.json

Write-Host "Report generated."
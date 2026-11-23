$ErrorActionPreference = "Stop"

$tests = @(
    "sql/V004__customers_tests.sql",
    "sql/V005__customers_constraints_tests.sql",
    "sql/V007__customers_unique_tests.sql",
    "sql/V009__orders_fk_tests.sql",
    "sql/V010__customers_data_tests.sql",
    "sql/V015__customer_orders_view_tests.sql",
    "sql/V017__get_customer_email_function_tests.sql",
    "sql/V019__get_customer_total_spent_tests.sql",
    "sql/V021__get_customer_order_count_tests.sql",
    "sql/V023__get_customer_tier_tests.sql"
)

$output = ""

foreach ($test in $tests) {

    Write-Host "Ejecutando $test"

    $result =
        Get-Content $test -Raw |
        docker exec -i contract-postgres `
            psql `
            -U postgres `
            -d contract_db

    $output += $result
    $output += "`n"
}

$output | Set-Content artifacts\full-test-run.log

$okCount =
    ([regex]::Matches(
        $output,
        'ok\s+[0-9]+'
    )).Count

$failCount =
    ([regex]::Matches(
        $output,
        'not ok\s+[0-9]+'
    )).Count

$status =
    if ($failCount -eq 0) {
        "PASS"
    }
    else {
        "FAIL"
    }

$report = @{
    project      = "sql-contract-testbed"
    database     = "contract_db"
    postgres     = "16.16"
    pgtap        = "1.3.4"
    suite        = "V004-V023"
    generated_at = (Get-Date).ToString("s")
    passed       = $okCount
    failed       = $failCount
    status       = $status
}
$report |
    ConvertTo-Json |
    Set-Content artifacts\test-summary.json

Write-Host ""
Write-Host "========================"
Write-Host "TEST SUMMARY"
Write-Host "========================"
Write-Host "Passed: $okCount"
Write-Host "Failed: $failCount"
Write-Host "Status: $status"
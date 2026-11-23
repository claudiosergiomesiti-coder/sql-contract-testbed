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

foreach ($test in $tests) {

    Write-Host ""
    Write-Host "=================================================="
    Write-Host "Ejecutando $test"
    Write-Host "=================================================="

    Get-Content $test -Raw |
        docker exec -i contract-postgres `
            psql `
            -U postgres `
            -d contract_db
}
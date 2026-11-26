$tests = @(
"/workspace/sql/V004__customers_tests.sql",
"/workspace/sql/V005__customers_constraints_tests.sql",
"/workspace/sql/V007__customers_unique_tests.sql",
"/workspace/sql/V009__orders_fk_tests.sql",
"/workspace/sql/V010__customers_data_tests.sql",
"/workspace/sql/V015__customer_orders_view_tests.sql",
"/workspace/sql/V017__get_customer_email_function_tests.sql",
"/workspace/sql/V019__get_customer_total_spent_tests.sql",
"/workspace/sql/V021__get_customer_order_count_tests.sql",
"/workspace/sql/V023__get_customer_tier_tests.sql",
"/workspace/sql/V025__products_tests.sql",
"/workspace/sql/V027__order_items_tests.sql",
"/workspace/sql/V029__get_order_total_tests.sql",
"/workspace/sql/V033__payments_tests.sql",
"/workspace/sql/V035__get_customer_revenue_tests.sql",
"/workspace/sql/V037__top_customers_view_tests.sql",
"/workspace/sql/V039__top_products_view_tests.sql",
"/workspace/sql/V041__get_total_revenue_tests.sql",
"/workspace/sql/V043__get_top_customer_tests.sql",
"/workspace/sql/V045__get_top_product_tests.sql",
"/workspace/sql/V047__business_kpis_view_tests.sql",
"/workspace/sql/V049__get_average_order_value_tests.sql",
"/workspace/sql/V051__get_total_products_sold_tests.sql",
"/workspace/sql/V053__monthly_revenue_view_tests.sql",
"/workspace/sql/V055__top_5_customers_view_tests.sql",
"/workspace/sql/V057__sales_dashboard_view_tests.sql",
"/workspace/sql/V059__customer_segmentation_view_tests.sql",
"/workspace/sql/V061__monthly_products_view_tests.sql"
"/workspace/sql/V063__customer_lifetime_value_view_tests.sql",
"/workspace/sql/V065__customer_retention_view_tests.sql"
"/workspace/sql/V067__sales_forecast_view_tests.sql",
"/workspace/sql/V069__product_performance_view_tests.sql",
"/workspace/sql/V071__executive_scorecard_view_tests.sql",
"/workspace/sql/V073__customer_health_score_view_tests.sql",
"/workspace/sql/V075__executive_alerts_view_tests.sql"
)
 
docker exec contract-postgres pg_prove `
  -U postgres `
  -d contract_db `
  $tests
docker exec contract-postgres pg_prove `
  -U postgres `
  -d contract_db `
  /workspace/sql/V004__customers_tests.sql `
  /workspace/sql/V005__customers_constraints_tests.sql `
  /workspace/sql/V007__customers_unique_tests.sql `
  /workspace/sql/V009__orders_fk_tests.sql `
  /workspace/sql/V010__customers_data_tests.sql `
  /workspace/sql/V015__customer_orders_view_tests.sql `
  /workspace/sql/V017__get_customer_email_function_tests.sql `
  /workspace/sql/V019__get_customer_total_spent_tests.sql `
  /workspace/sql/V021__get_customer_order_count_tests.sql `
  /workspace/sql/V023__get_customer_tier_tests.sql `
  /workspace/sql/V025__products_tests.sql `
  /workspace/sql/V027__order_items_tests.sql `
  /workspace/sql/V029__get_order_total_tests.sql `
  /workspace/sql/V033__payments_tests.sql `
  /workspace/sql/V035__get_customer_revenue_tests.sql `
  /workspace/sql/V037__top_customers_view_tests.sql `
  /workspace/sql/V039__top_products_view_tests.sql
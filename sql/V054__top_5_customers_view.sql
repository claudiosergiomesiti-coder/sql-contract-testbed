CREATE OR REPLACE VIEW top_5_customers AS
SELECT
    customer_id,
    customer_name,
    total_revenue
FROM top_customers
ORDER BY total_revenue DESC
LIMIT 5;
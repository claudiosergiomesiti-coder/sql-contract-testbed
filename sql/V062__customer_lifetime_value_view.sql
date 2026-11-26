CREATE OR REPLACE VIEW customer_lifetime_value AS
SELECT
    customer_id,
    customer_name,
    total_revenue AS lifetime_value
FROM top_customers
ORDER BY lifetime_value DESC;
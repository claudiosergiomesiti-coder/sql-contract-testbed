CREATE OR REPLACE VIEW top_loyal_customers_view
AS
SELECT
    id,
    name,
    total_spent,
    loyalty_level
FROM customer_loyalty_view
ORDER BY total_spent DESC;
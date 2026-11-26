CREATE OR REPLACE VIEW top_customers AS
SELECT
    c.id AS customer_id,
    c.name AS customer_name,
    COALESCE(SUM(p.amount), 0) AS total_revenue
FROM customers c
LEFT JOIN orders o
    ON o.customer_id = c.id
LEFT JOIN payments p
    ON p.order_id = o.id
GROUP BY
    c.id,
    c.name
ORDER BY
    total_revenue DESC;
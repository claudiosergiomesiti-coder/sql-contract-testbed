CREATE OR REPLACE VIEW customer_retention AS
SELECT
    c.id AS customer_id,
    c.name AS customer_name,
    COUNT(o.id)::INTEGER AS order_count,
    CASE
        WHEN COUNT(o.id) >= 3 THEN 'RETAINED'
        ELSE 'AT_RISK'
    END AS retention_status
FROM customers c
LEFT JOIN orders o
    ON o.customer_id = c.id
GROUP BY c.id, c.name;
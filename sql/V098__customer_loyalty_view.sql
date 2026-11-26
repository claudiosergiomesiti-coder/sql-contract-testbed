CREATE OR REPLACE VIEW customer_loyalty_view
AS
SELECT
    c.id,
    c.name,
    COALESCE(SUM(o.total),0)::numeric(10,2) AS total_spent,
    CASE
        WHEN COALESCE(SUM(o.total),0) >= 1000 THEN 'PLATINUM'
        WHEN COALESCE(SUM(o.total),0) >= 500 THEN 'GOLD'
        WHEN COALESCE(SUM(o.total),0) >= 100 THEN 'SILVER'
        ELSE 'BRONZE'
    END AS loyalty_level
FROM customers c
LEFT JOIN orders o
    ON o.customer_id = c.id
GROUP BY c.id, c.name;
 
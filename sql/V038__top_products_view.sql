CREATE OR REPLACE VIEW top_products AS
SELECT
    p.id AS product_id,
    p.name AS product_name,
    COALESCE(SUM(oi.quantity), 0) AS units_sold,
    COALESCE(SUM(oi.quantity * p.price), 0) AS revenue
FROM products p
LEFT JOIN order_items oi
    ON oi.product_id = p.id
GROUP BY
    p.id,
    p.name
ORDER BY
    revenue DESC;
CREATE OR REPLACE VIEW product_performance AS
SELECT
    p.id AS product_id,
    p.name AS product_name,
    COALESCE(SUM(oi.quantity), 0)::INTEGER AS units_sold,
    COALESCE(SUM(oi.quantity * p.price), 0)::NUMERIC(10,2) AS revenue
FROM products p
LEFT JOIN order_items oi
    ON oi.product_id = p.id
GROUP BY p.id, p.name, p.price
ORDER BY revenue DESC;
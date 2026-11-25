CREATE OR REPLACE VIEW monthly_products AS
SELECT
    p.name AS product_name,
    SUM(oi.quantity)::INTEGER AS total_sold
FROM order_items oi
JOIN products p
    ON p.id = oi.product_id
GROUP BY p.name
ORDER BY total_sold DESC;
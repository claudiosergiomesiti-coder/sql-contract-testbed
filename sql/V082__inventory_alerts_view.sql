CREATE OR REPLACE VIEW inventory_alerts_view
AS
SELECT
    p.id AS product_id,
    p.name,
    i.stock,
    i.minimum_stock
FROM inventory i
JOIN products p
    ON p.id = i.product_id
WHERE i.stock <= i.minimum_stock;
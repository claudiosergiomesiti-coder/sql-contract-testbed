CREATE OR REPLACE VIEW inventory_status_view
AS
SELECT
    product_id,
    stock,
    minimum_stock,
    CASE
        WHEN stock = 0 THEN 'OUT_OF_STOCK'
        WHEN stock <= minimum_stock THEN 'LOW'
        ELSE 'NORMAL'
    END AS status
FROM inventory;
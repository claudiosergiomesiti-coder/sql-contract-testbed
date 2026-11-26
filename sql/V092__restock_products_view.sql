CREATE OR REPLACE VIEW restock_products_view
AS
SELECT
    product_id,
    stock,
    minimum_stock
FROM inventory
WHERE stock <= minimum_stock;
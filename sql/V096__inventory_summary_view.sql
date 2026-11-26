CREATE OR REPLACE VIEW inventory_summary_view
AS
SELECT
    COUNT(*)::integer AS total_products,
    SUM(stock)::integer AS total_stock
FROM inventory;
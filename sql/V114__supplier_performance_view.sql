CREATE OR REPLACE VIEW supplier_performance_view
AS
SELECT
    s.id,
    s.name,
    COUNT(po.id)::integer AS purchase_orders_count,
    COALESCE(SUM(po.total),0)::numeric(10,2) AS total_purchased
FROM suppliers s
LEFT JOIN purchase_orders po
    ON po.supplier_id = s.id
GROUP BY s.id, s.name;
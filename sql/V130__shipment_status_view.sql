CREATE OR REPLACE VIEW shipment_status_view
AS
SELECT
    id,
    order_id,
    status,
    shipped_at
FROM shipments;
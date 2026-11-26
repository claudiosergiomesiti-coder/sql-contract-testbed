CREATE OR REPLACE VIEW inventory_by_location_view
AS
SELECT
    wl.id,
    wl.name,
    wl.capacity
FROM warehouse_locations wl;
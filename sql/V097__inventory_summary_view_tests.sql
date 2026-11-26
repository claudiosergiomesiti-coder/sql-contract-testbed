BEGIN;
 
SELECT plan(3);
 
SELECT has_view(
    'public',
    'inventory_summary_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT total_products
        FROM inventory_summary_view
    ),
    3,
    'Hay 3 productos inventariados'
);
 
SELECT is(
    (
        SELECT total_stock
        FROM inventory_summary_view
    ),
    105,
    'El stock total es correcto'
);
 
SELECT * FROM finish();
 
ROLLBACK;
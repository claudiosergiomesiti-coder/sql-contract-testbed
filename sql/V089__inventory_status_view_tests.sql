BEGIN;
 
SELECT plan(4);
 
SELECT has_view(
    'public',
    'inventory_status_view',
    'La vista inventory_status_view existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM inventory_status_view
    ),
    3,
    'La vista devuelve 3 filas'
);
 
SELECT is(
    (
        SELECT status
        FROM inventory_status_view
        WHERE product_id = 2
    ),
    'LOW',
    'Producto 2 en estado LOW'
);
 
SELECT is(
    (
        SELECT status
        FROM inventory_status_view
        WHERE product_id = 3
    ),
    'OUT_OF_STOCK',
    'Producto 3 sin stock'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(3);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM inventory
    ),
    3,
    'Existen 3 registros de inventario'
);
 
SELECT is(
    (
        SELECT stock
        FROM inventory
        WHERE product_id = 2
    ),
    5,
    'Producto 2 tiene stock bajo'
);
 
SELECT is(
    (
        SELECT stock
        FROM inventory
        WHERE product_id = 3
    ),
    0,
    'Producto 3 sin stock'
);
 
SELECT * FROM finish();
 
ROLLBACK;
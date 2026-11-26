BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'inventory_by_location_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM inventory_by_location_view
    ),
    0,
    'Inicialmente no hay almacenes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
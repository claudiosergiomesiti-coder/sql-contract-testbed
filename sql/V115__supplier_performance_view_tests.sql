BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'supplier_performance_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM supplier_performance_view
    ),
    0,
    'Inicialmente no hay proveedores'
);
 
SELECT * FROM finish();
 
ROLLBACK;
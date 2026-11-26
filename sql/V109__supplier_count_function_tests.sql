BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'supplier_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    supplier_count(),
    0,
    'Inicialmente no hay proveedores'
);
 
SELECT * FROM finish();
 
ROLLBACK;
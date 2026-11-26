BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'warehouse_capacity',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    warehouse_capacity(),
    0,
    'Capacidad inicial cero'
);
 
SELECT * FROM finish();
 
ROLLBACK;
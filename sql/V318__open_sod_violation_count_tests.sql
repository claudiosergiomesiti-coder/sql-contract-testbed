BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'open_sod_violation_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    open_sod_violation_count(),
    0,
    'Inicialmente no existen conflictos abiertos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
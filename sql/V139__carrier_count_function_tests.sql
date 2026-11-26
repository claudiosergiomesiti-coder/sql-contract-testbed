BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'carrier_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    carrier_count(),
    0,
    'Inicialmente no existen transportistas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
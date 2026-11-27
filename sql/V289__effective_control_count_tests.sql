BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'effective_control_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    effective_control_count(),
    0,
    'Inicialmente no existen controles efectivos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
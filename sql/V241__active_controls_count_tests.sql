BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'active_controls_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    active_controls_count(),
    0,
    'Inicialmente no existen controles activos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
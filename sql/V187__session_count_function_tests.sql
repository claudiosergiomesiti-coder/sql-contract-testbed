BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'session_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    session_count(),
    0,
    'Inicialmente no existen sesiones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
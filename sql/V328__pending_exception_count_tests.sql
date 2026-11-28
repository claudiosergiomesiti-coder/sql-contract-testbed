BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'pending_exception_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    pending_exception_count(),
    0,
    'Inicialmente no existen solicitudes pendientes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
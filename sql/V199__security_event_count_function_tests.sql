BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'security_event_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    security_event_count(),
    0,
    'Inicialmente no existen eventos de seguridad'
);
 
SELECT * FROM finish();
 
ROLLBACK;
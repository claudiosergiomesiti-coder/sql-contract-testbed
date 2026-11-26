BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'login_event_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    login_event_count(),
    0,
    'Inicialmente no existen eventos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
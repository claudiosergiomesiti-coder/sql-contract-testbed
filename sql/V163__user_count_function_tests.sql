BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'user_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    user_count(),
    0,
    'Inicialmente no existen usuarios'
);
 
SELECT * FROM finish();
 
ROLLBACK;
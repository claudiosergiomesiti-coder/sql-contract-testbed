BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'role_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    role_count(),
    0,
    'Inicialmente no existen roles'
);
 
SELECT * FROM finish();
 
ROLLBACK;
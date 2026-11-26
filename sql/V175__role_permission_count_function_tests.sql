BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'role_permission_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    role_permission_count(),
    0,
    'Inicialmente no existen relaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'permission_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    permission_count(),
    0,
    'Inicialmente no existen permisos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
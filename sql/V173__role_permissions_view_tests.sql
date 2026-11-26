BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'role_permissions_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM role_permissions_view
    ),
    0,
    'Inicialmente no existen relaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
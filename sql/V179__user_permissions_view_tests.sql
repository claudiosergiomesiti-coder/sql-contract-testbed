BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'user_permissions_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM user_permissions_view
    ),
    0,
    'Inicialmente no existen relaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
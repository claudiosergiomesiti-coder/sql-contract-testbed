BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'permission_summary_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM permission_summary_view
    ),
    0,
    'Inicialmente no existen permisos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
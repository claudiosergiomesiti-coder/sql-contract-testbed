BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'role_summary_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM role_summary_view
    ),
    0,
    'Inicialmente no existen roles'
);
 
SELECT * FROM finish();
 
ROLLBACK;
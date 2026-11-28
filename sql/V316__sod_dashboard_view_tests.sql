BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'sod_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM sod_dashboard_view
    ),
    0,
    'Inicialmente no existen conflictos'
);
 
SELECT * FROM finish();
 
ROLLBACK;

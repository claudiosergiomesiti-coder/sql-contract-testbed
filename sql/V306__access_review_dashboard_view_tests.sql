BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'access_review_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM access_review_dashboard_view
    ),
    0,
    'Inicialmente no existen campañas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
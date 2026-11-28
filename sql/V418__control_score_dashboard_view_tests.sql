BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'control_score_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM control_score_dashboard_view
    ),
    0,
    'Inicialmente no existen controles evaluados'
);
 
SELECT * FROM finish();
 
ROLLBACK;
 
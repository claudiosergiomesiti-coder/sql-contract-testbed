BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'compliance_score_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM compliance_score_dashboard_view
    ),
    0,
    'Inicialmente no existen puntuaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
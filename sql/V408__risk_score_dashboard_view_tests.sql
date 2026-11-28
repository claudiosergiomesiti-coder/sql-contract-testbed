BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'risk_score_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM risk_scor*_dashboard_view
    ),
    0,
    'Inicialmente no existen riesgos calculados'
);
 
SELECT * FROM finish();
 
ROLLBACK;
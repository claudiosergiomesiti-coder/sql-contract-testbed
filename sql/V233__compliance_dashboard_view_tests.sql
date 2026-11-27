BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'compliance_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM compliance_dashboard_view
    ),
    0,
    'Inicialmente no existen métricas de cumplimiento'
);
 
SELECT * FROM finish();
 
ROLLBACK;
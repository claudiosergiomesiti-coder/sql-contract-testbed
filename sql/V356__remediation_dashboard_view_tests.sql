BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'remediation_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM remediation_dashboard_view
    ),
    0,
    'Inicialmente no existen planes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
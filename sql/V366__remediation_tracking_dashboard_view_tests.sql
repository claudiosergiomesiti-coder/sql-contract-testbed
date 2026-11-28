BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'remediation_tracking_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM remediation_tracking_dashboard_view
    ),
    0,
    'Inicialmente no existe seguimiento'
);
 
SELECT * FROM finish();
 
ROLLBACK;
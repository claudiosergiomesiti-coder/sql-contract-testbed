BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'audit_readiness_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM audit_readiness_dashboard_view
    ),
    0,
    'Inicialmente no existen evaluaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
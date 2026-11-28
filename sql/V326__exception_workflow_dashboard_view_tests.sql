BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'exception_workflow_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM exception_workflow_dashboard_view
    ),
    0,
    'Inicialmente no existen solicitudes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
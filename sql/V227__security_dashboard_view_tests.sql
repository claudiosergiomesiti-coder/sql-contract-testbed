BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'security_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM security_dashboard_view
    ),
    0,
    'Inicialmente no existen métricas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
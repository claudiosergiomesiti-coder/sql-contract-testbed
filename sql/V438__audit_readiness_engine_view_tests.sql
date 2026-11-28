BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'audit_readiness_engine_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM audit_readiness_engine_view
    ),
    0,
    'Inicialmente no existen registros'
);
 
SELECT * FROM finish();
 
ROLLBACK;
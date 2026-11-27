BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'risk_escalations_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM risk_escal*tions_view
    ),
    0,
    'Inicialmente no existen escalaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
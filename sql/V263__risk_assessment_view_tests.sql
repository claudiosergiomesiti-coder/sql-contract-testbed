BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'risk_assessment_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM risk_assessment_view
    ),
    0,
    'Inicialmente no existen evaluaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
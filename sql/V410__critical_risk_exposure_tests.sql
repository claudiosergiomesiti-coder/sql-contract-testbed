BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'critical_risk_exposure',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    critical_risk_exposure(),
    0,
    'Inicialmente no existen riesgos críticos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
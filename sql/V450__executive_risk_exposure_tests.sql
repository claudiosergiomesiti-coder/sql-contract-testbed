BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'executive_risk_exposure',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    executive_risk_exposure(),
    0,
    'Inicialmente no existen KPI críticos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
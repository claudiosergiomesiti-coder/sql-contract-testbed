BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'high_risk_threat_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    high_risk_threat_count(),
    0,
    'Inicialmente no existen amenazas de riesgo alto'
);
 
SELECT * FROM finish();
 
ROLLBACK;
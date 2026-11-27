BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'assigned_risk_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    assigned_risk_count(),
    0,
    'Inicialmente no existen riesgos asignados'
);
 
SELECT * FROM finish();
 
ROLLBACK;
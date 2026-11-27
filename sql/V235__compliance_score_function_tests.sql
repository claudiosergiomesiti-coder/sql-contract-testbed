BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'compliance_score',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    compliance_score(),
    0,
    'Inicialmente la puntuación de cumplimiento es 0'
);
 
SELECT * FROM finish();
 
ROLLBACK;
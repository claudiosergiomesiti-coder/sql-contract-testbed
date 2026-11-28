BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'executive_compliance_score',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    executive_compliance_score(),
    0::numeric,
    'Inicialmente la puntuación es 0'
);
 
SELECT * FROM finish();
 
ROLLBACK;
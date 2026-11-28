BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'evidence_completion_rate',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    evidence_completion_rate(),
    0::numeric,
    'Inicialmente la tasa es 0'
);
 
SELECT * FROM finish();
 
ROLLBACK;
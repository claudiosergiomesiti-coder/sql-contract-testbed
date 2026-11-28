BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'audit_readiness_rate',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    audit_readiness_rate(),
    0::numeric,
    'Inicialmente la tasa es 0'
);
 
SELECT * FROM finish();
 
ROLLBACK;
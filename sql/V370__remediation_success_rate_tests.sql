BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'remediation_success_rate',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    remediation_success_rate(),
    0::numeric,
    'Inicialmente la tasa es 0'
);
 
SELECT * FROM finish();
 
ROLLBACK;
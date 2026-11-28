BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'sod_compliance_rate',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    sod_compliance_rate(),
    0::numeric,
    'Inicialmente la tasa es 0'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'closed_remediation_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    closed_remediation_count(),
    0,
    'Inicialmente no existen cierres'
);
 
SELECT * FROM finish();
 
ROLLBACK;
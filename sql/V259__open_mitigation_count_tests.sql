BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'open_mitigation_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    open_mitigation_count(),
    0,
    'Inicialmente no existen mitigaciones abiertas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
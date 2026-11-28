BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'open_finding_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    open_finding_count(),
    0,
    'Inicialmente no existen hallazgos abiertos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
 
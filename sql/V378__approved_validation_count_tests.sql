BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'approved_validation_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    approved_validation_count(),
    0,
    'Inicialmente no existen aprobaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
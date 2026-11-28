BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'audit_readiness_exposure',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    audit_readiness_exposure(),
    0,
    'Inicialmente no existen áreas no preparadas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
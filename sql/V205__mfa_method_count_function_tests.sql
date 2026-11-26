BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'mfa_method_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    mfa_method_count(),
    0,
    'Inicialmente no existen métodos MFA'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'overall_compliance_exposure',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    overall_compliance_exposure(),
    0,
    'Inicialmente no existen incumplimientos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
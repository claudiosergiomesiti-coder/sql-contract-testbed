BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'effective_control_exposure',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    effective_control_exposure(),
    0,
    'Inicialmente no existen controles inefectivos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
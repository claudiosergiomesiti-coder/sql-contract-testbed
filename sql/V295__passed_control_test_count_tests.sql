BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'passed_control_test_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    passed_control_test_count(),
    0,
    'Inicialmente no existen pruebas aprobadas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
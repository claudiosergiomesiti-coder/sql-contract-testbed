BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'control_tests_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM control_tests_view
    ),
    0,
    'Inicialmente no existen pruebas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
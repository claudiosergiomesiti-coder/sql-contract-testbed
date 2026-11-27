BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'control_tests',
    'La tabla control_tests existe'
);
 
SELECT has_column(
    'public',
    'control_tests',
    'control_id',
    'La columna control_id existe'
);
 
SELECT has_column(
    'public',
    'control_tests',
    'test_result',
    'La columna test_result existe'
);
 
SELECT col_is_pk(
    'public',
    'control_tests',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'closure_validations',
    'La tabla closure_validations existe'
);
 
SELECT has_column(
    'public',
    'closure_validations',
    'closure_id',
    'La columna closure_id existe'
);
 
SELECT has_column(
    'public',
    'closure_validations',
    'validation_status',
    'La columna validation_status existe'
);
 
SELECT col_is_pk(
    'public',
    'closure_validations',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
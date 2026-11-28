BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'sod_rules',
    'La tabla sod_rules existe'
);
 
SELECT has_column(
    'public',
    'sod_rules',
    'first_role',
    'La columna first_role existe'
);
 
SELECT has_column(
    'public',
    'sod_rules',
    'second_role',
    'La columna second_role existe'
);
 
SELECT col_is_pk(
    'public',
    'sod_rules',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'permissions',
    'La tabla permissions existe'
);
 
SELECT has_column(
    'public',
    'permissions',
    'name',
    'La columna name existe'
);
 
SELECT col_is_pk(
    'public',
    'permissions',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
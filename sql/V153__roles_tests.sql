BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'roles',
    'La tabla roles existe'
);
 
SELECT has_column(
    'public',
    'roles',
    'name',
    'La columna name existe'
);
 
SELECT col_is_pk(
    'public',
    'roles',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
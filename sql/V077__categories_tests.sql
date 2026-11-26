BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'categories',
    'La tabla categories existe'
);
 
SELECT has_column(
    'public',
    'categories',
    'name',
    'La columna name existe'
);
 
SELECT col_is_pk(
    'public',
    'categories',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
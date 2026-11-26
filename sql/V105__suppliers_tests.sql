BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'suppliers',
    'La tabla suppliers existe'
);
 
SELECT has_column(
    'public',
    'suppliers',
    'email',
    'La columna email existe'
);
 
SELECT col_is_pk(
    'public',
    'suppliers',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
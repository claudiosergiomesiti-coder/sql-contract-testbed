BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'carriers',
    'La tabla carriers existe'
);
 
SELECT has_column(
    'public',
    'carriers',
    'contact_email',
    'La columna contact_email existe'
);
 
SELECT col_is_pk(
    'public',
    'carriers',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
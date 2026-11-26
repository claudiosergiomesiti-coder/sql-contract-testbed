BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'notifications',
    'La tabla notifications existe'
);
 
SELECT has_column(
    'public',
    'notifications',
    'status',
    'La columna status existe'
);
 
SELECT col_is_pk(
    'public',
    'notifications',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
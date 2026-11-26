BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'shipments',
    'La tabla shipments existe'
);
 
SELECT has_column(
    'public',
    'shipments',
    'status',
    'La columna status existe'
);
 
SELECT col_is_pk(
    'public',
    'shipments',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
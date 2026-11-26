BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'warehouse_locations',
    'La tabla existe'
);
 
SELECT has_column(
    'public',
    'warehouse_locations',
    'capacity',
    'La columna capacity existe'
);
 
SELECT col_is_pk(
    'public',
    'warehouse_locations',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
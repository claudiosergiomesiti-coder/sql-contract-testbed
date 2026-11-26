BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'inventory',
    'La tabla inventory existe'
);
 
SELECT has_column(
    'public',
    'inventory',
    'stock',
    'La columna stock existe'
);
 
SELECT has_column(
    'public',
    'inventory',
    'minimum_stock',
    'La columna minimum_stock existe'
);
 
SELECT col_is_pk(
    'public',
    'inventory',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
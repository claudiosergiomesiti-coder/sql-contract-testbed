BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'products',
    'La tabla products existe'
);
 
SELECT has_column(
    'products',
    'name',
    'La columna name existe'
);
 
SELECT has_column(
    'products',
    'price',
    'La columna price existe'
);
 
SELECT col_is_pk(
    'products',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
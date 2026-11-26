BEGIN;
 
SELECT plan(2);
 
SELECT has_column(
    'public',
    'products',
    'category_id',
    'La columna category_id existe'
);
 
SELECT fk_ok(
    'public',
    'products',
    'category_id',
    'public',
    'categories',
    'id',
    'La FK products -> categories existe'
);
 
SELECT * FROM finish();
 
ROLLBACK;
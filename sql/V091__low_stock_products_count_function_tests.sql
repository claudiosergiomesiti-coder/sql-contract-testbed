BEGIN;
 
SELECT plan(3);
 
SELECT has_function(
    'public',
    'low_stock_products_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    low_stock_products_count(),
    2,
    'Devuelve 2 productos con riesgo de stock'
);
 
SELECT isnt(
    low_stock_products_count(),
    NULL::integer,
    'Nunca devuelve NULL'
);
 
SELECT * FROM finish();
 
ROLLBACK;
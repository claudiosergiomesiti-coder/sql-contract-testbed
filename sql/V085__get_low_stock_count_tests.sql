BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'get_low_stock_count',
    ARRAY[]::text[],
    'La función get_low_stock_count existe'
);
 
SELECT is(
    get_low_stock_count(),
    0,
    'Inicialmente no hay productos con stock crítico'
);
 
SELECT * FROM finish();
 
ROLLBACK;
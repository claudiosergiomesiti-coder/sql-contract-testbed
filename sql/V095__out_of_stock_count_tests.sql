BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'out_of_stock_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    out_of_stock_count(),
    1,
    'Existe 1 producto sin stock'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'restock_products_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM restock_products_view
    ),
    2,
    'Hay 2 productos para reponer'
);
 
SELECT * FROM finish();
 
ROLLBACK;
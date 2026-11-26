BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'supplier_products_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM supplier_p*oducts_view
    ),
    0,
    'Ini*ialmente no hay proveedores'
);
 
S*LECT * FROM finish();
 
ROLLBACK;
`*
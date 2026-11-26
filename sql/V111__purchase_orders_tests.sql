BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'purchase_orders',
    'La tabla purchase_orders existe'
);
 
SELECT has_column(
    'public',
    'purchase_orders',
    'supplier_id',
    'La columna supplier_id existe'
);
 
SELECT fk_ok(
    'public',
    'purchase_orders',
    'supplier_id',
    'public',
    'suppliers',
    'id',
    'Existe la FK con suppliers'
);
 
SELECT * FROM finish();
 
ROLLBACK;
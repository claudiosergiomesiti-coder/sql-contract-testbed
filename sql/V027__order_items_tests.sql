BEGIN;
 
SELECT plan(5);
 
SELECT has_table(
    'order_items',
    'La tabla order_items existe'
);
 
SELECT has_column(
    'order_items',
    'order_id',
    'La columna order_id existe'
);
 
SELECT has_column(
    'order_items',
    'product_id',
    'La columna product_id existe'
);
 
SELECT fk_ok(
    'order_items',
    'order_id',
    'orders',
    'id',
    'order_id referencia orders.id'
);
 
SELECT fk_ok(
    'order_items',
    'product_id',
    'products',
    'id',
    'product_id referencia products.id'
);
 
SELECT * FROM finish();
 
ROLLBACK;
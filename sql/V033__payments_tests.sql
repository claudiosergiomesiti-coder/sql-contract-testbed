BEGIN;
 
SELECT plan(5);
 
SELECT has_table(
    'payments',
    'La tabla payments existe'
);
 
SELECT has_column(
    'payments',
    'order_id',
    'La columna order_id existe'
);
 
SELECT has_column(
    'payments',
    'amount',
    'La columna amount existe'
);
 
SELECT has_column(
    'payments',
    'payment_date',
    'La columna payment_date existe'
);
 
SELECT fk_ok(
    'payments',
    'order_id',
    'orders',
    'id',
    'order_id referencia orders.id'
);
 
SELECT * FROM finish();
 
ROLLBACK;
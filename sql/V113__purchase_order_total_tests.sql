BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'purchase_order_total',
    ARRAY['integer'],
    'La función existe'
);
 
SELECT is(
    purchase_order_total(999),
    0::numeric,
    'Devuelve cero para órdenes inexistentes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
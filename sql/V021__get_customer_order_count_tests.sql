BEGIN;

SELECT plan(3);

SELECT has_function(
    'public',
    'get_customer_order_count',
    ARRAY['integer'],
    'La función existe'
);

SELECT is(
    get_customer_order_count(1),
    1,
    'El cliente 1 tiene un pedido'
);

SELECT is(
    get_customer_order_count(999),
    0,
    'Un cliente inexistente tiene cero pedidos'
);

SELECT * FROM finish();

ROLLBACK;
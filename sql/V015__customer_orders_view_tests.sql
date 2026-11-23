BEGIN;

SELECT plan(3);

SELECT has_view(
    'public',
    'customer_orders',
    'La vista customer_orders existe'
);

SELECT is(
    (
        SELECT count(*)::integer
        FROM customer_orders
    ),
    1,
    'La vista devuelve exactamente una fila'
);

SELECT is(
    (
        SELECT name
        FROM customer_orders
        WHERE order_id = 1
    ),
    'Juan Perez',
    'La vista devuelve el cliente correcto'
);

SELECT * FROM finish();

ROLLBACK;
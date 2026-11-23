BEGIN;

SELECT plan(2);

SELECT is(
    (
        SELECT count(*)::integer
        FROM orders
    ),
    1,
    'Existe exactamente un pedido'
);

SELECT is(
    (
        SELECT customer_id
        FROM orders
        WHERE id = 1
    ),
    1,
    'El pedido pertenece al cliente 1'
);

SELECT * FROM finish();

ROLLBACK;
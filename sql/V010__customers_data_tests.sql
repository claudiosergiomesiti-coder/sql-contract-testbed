BEGIN;

SELECT plan(2);

SELECT results_eq(
    'SELECT count(*)::integer FROM customers',
    'VALUES (1)',
    'Existe exactamente un cliente'
);

SELECT is(
    (
        SELECT email
        FROM customers
        WHERE id = 1
    ),
    'juan@test.com',
    'El email del cliente es correcto'
);

SELECT * FROM finish();

ROLLBACK;
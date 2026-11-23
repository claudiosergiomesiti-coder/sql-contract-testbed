BEGIN;

SELECT plan(1);

SELECT is(
    (
        SELECT count(*)::integer
        FROM customers
        WHERE email = 'juan@test.com'
    ),
    1,
    'Solo existe un cliente con ese email'
);

SELECT * FROM finish();

ROLLBACK;
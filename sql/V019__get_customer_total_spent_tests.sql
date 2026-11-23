BEGIN;

SELECT plan(3);

SELECT has_function(
    'public',
    'get_customer_total_spent',
    ARRAY['integer'],
    'La función existe'
);

SELECT is(
    get_customer_total_spent(1),
    150.00::numeric,
    'Devuelve el total gastado correcto'
);

SELECT is(
    get_customer_total_spent(999),
    0::numeric,
    'Devuelve cero para clientes inexistentes'
);

SELECT * FROM finish();

ROLLBACK;
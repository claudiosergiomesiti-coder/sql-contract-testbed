BEGIN;

SELECT plan(3);

SELECT has_function(
    'public',
    'get_customer_email',
    ARRAY['integer'],
    'La función existe'
);

SELECT is(
    get_customer_email(1),
    'juan@test.com',
    'Devuelve el email correcto'
);

SELECT isnt(
    get_customer_email(1),
    'otro@test.com',
    'No devuelve un email incorrecto'
);

SELECT * FROM finish();

ROLLBACK;

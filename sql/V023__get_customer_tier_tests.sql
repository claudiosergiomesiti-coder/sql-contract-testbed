BEGIN;

SELECT plan(4);

SELECT has_function(
    'public',
    'get_customer_tier',
    ARRAY['integer'],
    'La función existe'
);

SELECT is(
    get_customer_tier(1),
    'SILVER',
    'El cliente 1 es SILVER'
);

SELECT is(
    get_customer_tier(999),
    'BRONZE',
    'Un cliente inexistente es BRONZE'
);

SELECT isnt(
    get_customer_tier(1),
    'GOLD',
    'El cliente 1 no es GOLD'
);

SELECT * FROM finish();

ROLLBACK;
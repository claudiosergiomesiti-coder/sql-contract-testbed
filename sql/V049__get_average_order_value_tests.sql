BEGIN;
 
SELECT plan(3);
 
INSERT INTO payments (
    id,
    order_id,
    amount,
    payment_date
)
VALUES
    (400, 1, 100.00, CURRENT_DATE);
 
SELECT has_function(
    'get_average_order_value',
    ARRAY[]::TEXT[],
    'La función existe'
);
 
SELECT is(
    get_average_order_value(),
    100.00::numeric,
    'Calcula correctamente el valor medio del pedido'
);
 
SELECT is(
    (
        SELECT CASE
            WHEN get_average_order_value() >= 0
            THEN 'SI'
            ELSE 'NO'
        END
    ),
    'SI',
    'El valor medio es válido'
);
 
SELECT * FROM finish();
 
ROLLBACK;
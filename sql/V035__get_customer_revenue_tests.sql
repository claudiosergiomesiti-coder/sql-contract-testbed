BEGIN;
 
SELECT plan(3);
 
INSERT INTO payments (
    id,
    order_id,
    amount,
    payment_date
)
VALUES
    (100, 1, 150.00, CURRENT_DATE);
 
SELECT has_function(
    'get_customer_revenue',
    ARRAY['integer'],
    'La función existe'
);
 
SELECT is(
    get_customer_revenue(1),
    150.00::numeric,
    'Devuelve el ingreso correcto para el cliente 1'
);
 
SELECT is(
    get_customer_revenue(999),
    0::numeric,
    'Devuelve cero para clientes inexistentes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
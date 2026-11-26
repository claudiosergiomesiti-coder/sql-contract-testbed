BEGIN;
 
SELECT plan(4);
 
INSERT INTO payments (
    id,
    order_id,
    amount,
    payment_date
)
VALUES
    (200, 1, 250.00, CURRENT_DATE);
 
SELECT has_view(
    'top_customers',
    'La vista top_customers existe'
);
 
SELECT is(
    (SELECT COUNT(*)::text FROM top_customers),
    '1',
    'La vista devuelve una fila'
);
 
SELECT is(
    (SELECT customer_name FROM top_customers LIMIT 1),
    'Juan Perez',
    'La vista devuelve el cliente correcto'
);
 
SELECT is(
    (SELECT total_revenue::text FROM top_customers LIMIT 1),
    '250.00',
    'La vista calcula correctamente la facturación'
);
 
SELECT * FROM finish();
 
ROLLBACK;
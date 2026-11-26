BEGIN;
 
SELECT plan(4);
 
INSERT INTO products (id, name, price)
VALUES
    (200, 'Monitor', 100.00);
 
INSERT INTO order_items (order_id, product_id, quantity)
VALUES
    (1, 200, 2);
 
SELECT has_view(
    'order_details',
    'La vista order_details existe'
);
 
SELECT is(
    (SELECT COUNT(*)::text FROM order_details),
    '1',
    'La vista devuelve una fila'
);
 
SELECT is(
    (SELECT product_name FROM order_details LIMIT 1),
    'Monitor',
    'La vista devuelve el producto correcto'
);
 
SELECT is(
    (SELECT line_total::text FROM order_details LIMIT 1),
    '200.00',
    'La vista calcula correctamente el total de línea'
);
 
SELECT * FROM finish();
 
ROLLBACK;
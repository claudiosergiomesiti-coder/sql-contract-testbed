BEGIN;
 
SELECT plan(4);
 
INSERT INTO products (
    id,
    name,
    price
)
VALUES
    (300, 'Laptop', 500.00);
 
INSERT INTO order_items (
    order_id,
    product_id,
    quantity
)
VALUES
    (1, 300, 2);
 
SELECT has_view(
    'top_products',
    'La vista top_products existe'
);
 
SELECT is(
    (SELECT COUNT(*)::text FROM top_products),
    '1',
    'La vista devuelve una fila'
);
 
SELECT is(
    (SELECT product_name FROM top_products LIMIT 1),
    'Laptop',
    'La vista devuelve el producto correcto'
);
 
SELECT is(
    (SELECT revenue::text FROM top_products LIMIT 1),
    '1000.00',
    'La vista calcula correctamente los ingresos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
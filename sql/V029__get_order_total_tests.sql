BEGIN;
 
SELECT plan(3);
 
INSERT INTO products (id, name, price)
VALUES
    (100, 'Teclado', 50.00);
 
INSERT INTO order_items (order_id, product_id, quantity)
VALUES
    (1, 100, 2);
 
SELECT has_function(
    'get_order_total',
    ARRAY['integer'],
    'La función existe'
);
 
SELECT is(
    get_order_total(1),
    100.00::numeric,
    'Calcula correctamente el total del pedido'
);
 
SELECT is(
    get_order_total(999),
    0::numeric,
    'Devuelve cero para pedidos inexistentes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
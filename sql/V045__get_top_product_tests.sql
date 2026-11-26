BEGIN;
 
SELECT plan(3);
 
INSERT INTO products (
    id,
    name,
    price
)
VALUES
    (999, 'Laptop', 500.00);
 
INSERT INTO order_items (
    order_id,
    product_id,
    quantity
)
VALUES
    (1, 999, 2);
 
SELECT has_function(
    'get_top_product',
    ARRAY[]::TEXT[],
    'La función existe'
);
 
SELECT is(
    get_top_product(),
    'Laptop',
    'Devuelve el producto con mayor facturación'
);
 
SELECT is(
    (
        SELECT CASE
            WHEN get_top_product() IS NOT NULL
            THEN 'SI'
            ELSE 'NO'
        END
    ),
    'SI',
    'La función devuelve un valor'
);
 
SELECT * FROM finish();
 
ROLLBACK;
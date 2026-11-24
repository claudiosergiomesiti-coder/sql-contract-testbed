SELECT plan(1);
 
SELECT is(
    get_total_products_sold(),
    0,
    'get_total_products_sold devuelve el total de productos vendidos'
);
 
SELECT * FROM finish();
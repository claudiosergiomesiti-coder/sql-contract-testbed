SELECT plan(2);
 
SELECT has_view(
    'public',
    'customer_lifetime_value',
    'La vista customer_lifetime_value existe'
);
 
SELECT ok(
    (SELECT COUNT(*) >= 1 FROM customer_lifetime_value),
    'customer_lifetime_value devuelve al menos una fila'
);
 
SELECT * FROM finish();
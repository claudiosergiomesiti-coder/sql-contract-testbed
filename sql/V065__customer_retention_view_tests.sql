SELECT plan(2);
 
SELECT has_view(
    'public',
    'customer_retention',
    'La vista customer_retention existe'
);
 
SELECT ok(
    (SELECT COUNT(*) >= 1 FROM customer_retention),
    'customer_retention devuelve al menos una fila'
);
 
SELECT * FROM finish();
SELECT plan(2);
 
SELECT has_view(
    'public',
    'customer_health_score',
    'La vista customer_health_score existe'
);
 
SELECT ok(
    (SELECT COUNT(*) >= 1 FROM customer_health_score),
    'customer_health_score devuelve al menos una fila'
);
 
SELECT * FROM finish();
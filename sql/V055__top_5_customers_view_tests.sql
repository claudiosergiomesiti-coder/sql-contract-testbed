SELECT plan(2);
 
SELECT has_view(
    'public',
    'top_5_customers',
    'La vista top_5_customers existe'
);
 
SELECT ok(
    (SELECT COUNT(*) <= 5 FROM top_5_customers),
    'top_5_customers devuelve como máximo 5 filas'
);
 
SELECT * FROM finish();
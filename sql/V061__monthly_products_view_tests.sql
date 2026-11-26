SELECT plan(2);
 
SELECT has_view(
    'public',
    'monthly_products',
    'La vista monthly_products existe'
);
 
SELECT ok(
    (SELECT COUNT(*) >= 0 FROM monthly_products),
    'monthly_products puede consultarse correctamente'
);
 
SELECT * FROM finish();
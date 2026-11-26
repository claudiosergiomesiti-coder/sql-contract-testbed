SELECT plan(2);
 
SELECT has_view(
    'public',
    'product_performance',
    'La vista product_performance existe'
);
 
SELECT results_eq(
    'SELECT COUNT(*)::INTEGER >= 0 FROM product_performance',
    ARRAY[true],
    'product_performance puede consultarse correctamente'
);
 
SELECT * FROM finish();
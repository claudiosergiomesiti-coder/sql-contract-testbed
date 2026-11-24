SELECT plan(2);
 
SELECT has_view(
    'public',
    'monthly_revenue',
    'La vista monthly_revenue existe'
);
 
SELECT results_eq(
    'SELECT COUNT(*)::INTEGER FROM monthly_revenue',
    ARRAY[1],
    'monthly_revenue devuelve una fila'
);
 
SELECT * FROM finish();
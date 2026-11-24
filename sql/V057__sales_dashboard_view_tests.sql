SELECT plan(2);
 
SELECT has_view(
    'public',
    'sales_dashboard',
    'La vista sales_dashboard existe'
);
 
SELECT results_eq(
    'SELECT COUNT(*)::INTEGER FROM sales_dashboard',
    ARRAY[1],
    'sales_dashboard devuelve una fila'
);
 
SELECT * FROM finish();
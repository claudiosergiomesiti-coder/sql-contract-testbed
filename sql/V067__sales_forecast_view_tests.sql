SELECT plan(2);
 
SELECT has_view(
    'public',
    'sales_forecast',
    'La vista sales_forecast existe'
);
 
SELECT results_eq(
    'SELECT COUNT(*)::INTEGER FROM sales_forecast',
    ARRAY[1],
    'sales_forecast devuelve una fila'
);
 
SELECT * FROM finish();
SELECT plan(1);
 
SELECT is(
    get_top_customer(),
    'Juan Perez',
    'get_top_customer devuelve el cliente con mayor facturación'
);
 
SELECT * FROM finish();
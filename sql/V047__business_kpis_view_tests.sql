BEGIN;
 
SELECT plan(5);
 
SELECT has_view(
    'business_kpis',
    'La vista business_kpis existe'
);
 
SELECT is(
    (SELECT COUNT(*)::text FROM business_kpis),
    '1',
    'La vista devuelve una sola fila'
);
 
SELECT is(
    (
        SELECT CASE
            WHEN total_customers > 0
            THEN 'SI'
            ELSE 'NO'
        END
        FROM business_kpis
    ),
    'SI',
    'Existe al menos un cliente'
);
 
SELECT is(
    (
        SELECT CASE
            WHEN total_orders > 0
            THEN 'SI'
            ELSE 'NO'
        END
        FROM business_kpis
    ),
    'SI',
    'Existe al menos un pedido'
);
 
SELECT is(
    (
        SELECT CASE
            WHEN total_revenue >= 0
            THEN 'SI'
            ELSE 'NO'
        END
        FROM business_kpis
    ),
    'SI',
    'La facturacion es valida'
);
 
SELECT * FROM finish();
 
ROLLBACK;
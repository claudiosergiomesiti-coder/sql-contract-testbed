BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'shipment_tracking_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM shipment_tracking_view
    ),
    0,
    'Inicialmente no hay registros'
);
 
SELECT * FROM finish();
 
ROLLBACK;
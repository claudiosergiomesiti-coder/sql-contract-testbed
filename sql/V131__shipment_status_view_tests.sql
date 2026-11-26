BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'shipment_status_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM shipment_status_view
    ),
    0,
    'Inicialmente no hay envíos'
);
 
SELECT * FROM finish();
 
ROLLBACK;
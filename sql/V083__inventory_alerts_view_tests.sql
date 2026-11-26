BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'inventory_alerts_view',
    'La vista inventory_alerts_view existe'
);
 
SELECT view_owner_is(
    'public',
    'inventory_alerts_view',
    'postgres',
    'La vista pertenece a postgres'
);
 
SELECT * FROM finish();
 
ROLLBACK;
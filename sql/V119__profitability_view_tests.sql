BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'profitability_view',
    'La vista existe'
);
 
SELECT isnt(
    (
        SELECT profit
        FROM profitability_view
    ),
    NULL::numeric,
    'El beneficio nunca es NULL'
);
 
SELECT * FROM finish();
 
ROLLBACK;
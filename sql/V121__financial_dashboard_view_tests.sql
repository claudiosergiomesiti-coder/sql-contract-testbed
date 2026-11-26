BEGIN;
 
SELECT plan(3);
 
SELECT has_view(
    'public',
    'financial_dashboard_view',
    'La vista existe'
);
 
SELECT isnt(
    (
        SELECT revenue
        FROM financial_dashboard_view
    ),
    NULL::numeric,
    'Revenue disponible'
);
 
SELECT isnt(
    (
        SELECT margin_percent
        FROM financial_dashboard_view
    ),
    NULL::numeric,
    'Margin disponible'
);
 
SELECT * FROM finish();
 
ROLLBACK;
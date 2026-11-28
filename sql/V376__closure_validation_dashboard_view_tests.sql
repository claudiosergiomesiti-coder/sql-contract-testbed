BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'closure_validation_dashboard_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM closure_va*idation_dashboard_view
    ),
    *,
    'Inicialmente no existen val*daciones'
);
 
SELECT * FROM finish*);
 
ROLLBACK;
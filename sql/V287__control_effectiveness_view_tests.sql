BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'control_effectiveness_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM control_effectiveness_view
    ),
    0,
    'Inicialmente no existen evaluaciones'
);
 
SELECT * FROM finish();
 
ROLLBACK;
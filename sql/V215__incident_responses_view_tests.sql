BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'incident_responses_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM incident_responses_view
    ),
    0,
    'Inicialmente no existen respuestas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(2);
 
SELECT*has_function(
    'public',
    's*curity_incident_count',
    ARRAY[]::text[],
    'La función existe'
*;
 
SELECT is(
    security_inciden*_count(),
    0,
    'Inicialmente*no existen incidentes'
);
 
SELECT * FROM finish();
 
ROLLBACK;
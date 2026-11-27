BEGIN;
 
SELECT plan(2);
 
SELECT has_function(
    'public',
    'high_assessment_count',
    ARRAY[]::text[],
    'La función existe'
);
 
SELECT is(
    high_assessment_count(),
    0,
    'Inicialmente no existen evaluaciones HIGH'
);
 
SELECT * FROM finish();
 
ROLLBACK;
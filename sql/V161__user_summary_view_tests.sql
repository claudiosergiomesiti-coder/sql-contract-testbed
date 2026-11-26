BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'user_summary_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM user_summary_view
    ),
    0,
    'Inicialmente no existen usuarios'
);
 
SELECT * FROM finish();
 
ROLLBACK;
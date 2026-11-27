BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'security_policies_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT COUNT(*)::integer
        FROM security_policies_view
    ),
    0,
    'Inicialmente no existen políticas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
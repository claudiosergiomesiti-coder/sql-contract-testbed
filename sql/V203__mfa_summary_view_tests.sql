BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'mfa_summary_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM mfa_summary_view
    ),
    0,
    'Inicialmente no existen métodos MFA'
);
 
SELECT * FROM finish();
 
ROLLBACK;

BEGIN;
 
SELECT plan(2);
 
SELECT has_view(
    'public',
    'account_security_view',
    'La vista existe'
);
 
SELECT is(
    (
        SELECT count(*)::integer
        FROM account_security_view
    ),
    0,
    'Inicialmente no existen cuentas'
);
 
SELECT * FROM finish();
 
ROLLBACK;
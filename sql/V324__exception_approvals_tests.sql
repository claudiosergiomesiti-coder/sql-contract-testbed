BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'exception_approvals',
    'La tabla exception_approvals existe'
);
 
SELECT has_column(
    'public',
    'exception_approvals',
    'request_id',
    'La columna request_id existe'
);
 
SELECT has_column(
    'public',
    'exception_approvals',
    'decision',
    'La columna decision existe'
);
 
SELECT col_is_pk(
    'public',
    'exception_approvals',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
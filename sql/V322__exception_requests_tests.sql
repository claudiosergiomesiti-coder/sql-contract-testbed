BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'exception_requests',
    'La tabla exception_requests existe'
);
 
SELECT has_column(
    'public',
    'exception_requests',
    'request_name',
    'La columna request_name existe'
);
 
SELECT has_column(
    'public',
    'exception_requests',
    'request_status',
    'La columna request_status existe'
);
 
SELECT col_is_pk(
    'public',
    'exception_requests',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
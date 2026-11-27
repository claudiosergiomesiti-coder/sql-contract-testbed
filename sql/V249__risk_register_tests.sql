BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'risk_register',
    'La tabla risk_register existe'
);
 
SELECT has_column(
    'public',
    'risk_register',
    'risk_name',
    'La columna risk_name existe'
);
 
SELECT has_column(
    'public',
    'risk_register',
    'risk_severity',
    'La columna risk_severity existe'
);
 
SELECT col_is_pk(
    'public',
    'risk_register',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
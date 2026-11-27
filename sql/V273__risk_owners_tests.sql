BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'risk_owners',
    'La tabla risk_owners existe'
);
 
SELECT has_column(
    'public',
    'risk_owners',
    'risk_id',
    'La columna risk_id existe'
);
 
SELECT has_column(
    'public',
    'risk_owners',
    'owner_name',
    'La columna owner_name existe'
);
 
SELECT col_is_pk(
    'public',
    'risk_owners',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
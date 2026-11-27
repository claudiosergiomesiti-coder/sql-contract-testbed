BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'security_metrics',
    'La tabla security_metrics existe'
);
 
SELECT has_column(
    'public',
    'security_metrics',
    'metric_name',
    'La columna metric_name existe'
);
 
SELECT has_column(
    'public',
    'security_metrics',
    'metric_value',
    'La columna metric_value existe'
);
 
SELECT col_is_pk(
    'public',
    'security_metrics',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
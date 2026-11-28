BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'executive_metrics',
    'La tabla executive_metrics existe'
);
 
SELECT has_column(
    'public',
    'executive_metrics',
    'metric_name',
    'La columna metric_name existe'
);
 
SELECT has_column(
    'public',
    'executive_metrics',
    'metric_value',
    'La columna metric_value existe'
);
 
SELECT col_is_pk(
    'public',
    'executive_metrics',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
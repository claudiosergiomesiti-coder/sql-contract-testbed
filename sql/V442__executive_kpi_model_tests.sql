BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'executive_kpi_model',
    'La tabla executive_kpi_model existe'
);
 
SELECT has_column(
    'public',
    'executive_kpi_model',
    'kpi_value',
    'La columna kpi_value existe'
);
 
SELECT has_column(
    'public',
    'executive_kpi_model',
    'kpi_status',
    'La columna kpi_status existe'
);
 
SELECT col_is_pk(
    'public',
    'executive_kpi_model',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
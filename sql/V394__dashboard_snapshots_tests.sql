BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'dashboard_snapshots',
    'La tabla dashboard_snapshots existe'
);
 
SELECT has_column(
    'public',
    'dashboard_snapshots',
    'snapshot_name',
    'La columna snapshot_name existe'
);
 
SELECT has_column(
    'public',
    'dashboard_snapshots',
    'snapshot_status',
    'La columna snapshot_status existe'
);
 
SELECT col_is_pk(
    'public',
    'dashboard_snapshots',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
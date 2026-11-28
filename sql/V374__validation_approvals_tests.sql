BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'validation_approvals',
    'La tabla validation_approvals existe'
);
 
SELECT has_column(
    'public',
    'validation_approvals',
    'validation_id',
    'La columna validation_id existe'
);
 
SELECT has_column(
    'public',
    'validation_approvals',
    'approval_status',
    'La columna approval_status existe'
);
 
SELECT col_is_pk(
    'public',
    'validation_approvals',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'risk_reviews',
    'La tabla risk_reviews existe'
);
 
SELECT has_column(
    'public',
    'risk_reviews',
    'risk_id',
    'La columna risk_id existe'
);
 
SELECT has_column(
    'public',
    'risk_reviews',
    'review_status',
    'La columna review_status existe'
);
 
SELECT col_is_pk(
    'public',
    'risk_reviews',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
 
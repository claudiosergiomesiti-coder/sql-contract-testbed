BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'readiness_reviews',
    'La tabla readiness_reviews existe'
);
 
SELECT has_column(
    'public',
    'readiness_reviews',
    'readiness_id',
    'La columna readiness_id existe'
);
 
SELECT has_column(
    'public',
    'readiness_reviews',
    'review_status',
    'La columna review_status existe'
);
 
SELECT col_is_pk(
    'public',
    'readiness_reviews',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
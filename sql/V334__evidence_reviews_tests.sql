BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'evidence_reviews',
    'La tabla evidence_reviews existe'
);
 
SELECT has_column(
    'public',
    'evidence_reviews',
    'evidence_id',
    'La columna evidence_id existe'
);
 
SELECT has_column(
    'public',
    'evidence_reviews',
    'review_status',
    'La columna review_status existe'
);
 
SELECT col_is_pk(
    'public',
    'evidence_reviews',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
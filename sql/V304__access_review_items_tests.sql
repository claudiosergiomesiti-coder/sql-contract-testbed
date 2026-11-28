BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'access_review_items',
    'La tabla access_review_items existe'
);
 
SELECT has_column(
    'public',
    'access_review_items',
    'campaign_id',
    'La columna campaign_id existe'
);
 
SELECT has_column(
    'public',
    'access_review_items',
    'review_status',
    'La columna review_status existe'
);
 
SELECT col_is_pk(
    'public',
    'access_review_items',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;

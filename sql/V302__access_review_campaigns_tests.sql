BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'access_review_campaigns',
    'La tabla access_review_campaigns existe'
);
 
SELECT has_column(
    'public',
    'access_review_campaigns',
    'campaign_name',
    'La columna campaign_name existe'
);
 
SELECT has_column(
    'public',
    'access_review_campaigns',
    'campaign_status',
    'La columna campaign_status existe'
);
 
SELECT col_is_pk(
    'public',
    'access_review_campaigns',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
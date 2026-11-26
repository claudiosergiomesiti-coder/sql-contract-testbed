BEGIN;
 
SELECT plan(4);
 
SELECT has_table(
    'public',
    'sessions',
    'La tabla sessions existe'
);
 
SELECT has_column(
    'public',
    'sessions',
    'user_id',
    'La columna user_id existe'
);
 
SELECT has_column(
    'public',
    'sessions',
    'session_token',
    'La columna session_token existe'
);
 
SELECT col_is_pk(
    'public',
    'sessions',
    'id',
    'id es clave primaria'
);
 
SELECT * FROM finish();
 
ROLLBACK;
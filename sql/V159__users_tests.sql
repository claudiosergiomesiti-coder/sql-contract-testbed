BEGIN;
 
SELECT plan(3);
 
SELECT has_table(
    'public',
    'users',
    'La tabla users existe'
);
 
SELECT has_column(
    'public',
    'users',
    'username',
    'La columna username existe'
);
 
SELECT has_column(
    'public',
    'users',
    'role_id',
    'La columna role_id existe'
);
 
SELECT * FROM finish();
 
ROLLBACK;
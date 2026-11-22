BEGIN;

SELECT plan(3);

SELECT has_table(
    'public',
    'customers',
    'La tabla customers existe'
);

SELECT has_column(
    'public',
    'customers',
    'email',
    'La columna email existe'
);

SELECT col_is_pk(
    'public',
    'customers',
    'id',
    'id es clave primaria'
);

SELECT * FROM finish();

ROLLBACK;
BEGIN;

SELECT plan(4);

SELECT has_table(
    'public',
    'orders',
    'La tabla orders existe'
);

SELECT has_column(
    'public',
    'orders',
    'customer_id',
    'La columna customer_id existe'
);

SELECT col_is_pk(
    'public',
    'orders',
    'id',
    'id es clave primaria'
);

SELECT fk_ok(
    'public',
    'orders',
    'customer_id',
    'public',
    'customers',
    'id',
    'customer_id referencia customers.id'
);

SELECT * FROM finish();

ROLLBACK;
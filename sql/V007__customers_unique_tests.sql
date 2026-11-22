BEGIN;

SELECT plan(1);

SELECT col_is_unique(
    'public',
    'customers',
    'email',
    'email tiene restricción UNIQUE'
);

SELECT * FROM finish();

ROLLBACK;
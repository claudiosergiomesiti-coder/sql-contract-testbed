BEGIN;

SELECT plan(3);

SELECT col_not_null(
    'public',
    'customers',
    'name',
    'name es NOT NULL'
);

SELECT col_not_null(
    'public',
    'customers',
    'email',
    'email es NOT NULL'
);

SELECT col_type_is(
    'public',
    'customers',
    'email',
    'text',
    'email es de tipo text'
);

SELECT * FROM finish();

ROLLBACK;
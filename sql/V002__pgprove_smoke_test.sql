BEGIN;

SELECT plan(1);

SELECT pass(
    'Hello from pg_prove'
);

SELECT * FROM finish();

ROLLBACK;
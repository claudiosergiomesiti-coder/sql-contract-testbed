BEGIN;

SELECT plan(1);

SELECT pass(
    'smoke test'
);

SELECT * FROM finish();

ROLLBACK;

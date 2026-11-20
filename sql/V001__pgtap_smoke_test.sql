BEGIN;

SELECT plan(1);

SELECT pass(
    'Hello pgTAP from file'
);

SELECT * FROM finish();

ROLLBACK;
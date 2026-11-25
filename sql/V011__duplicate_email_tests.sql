BEGIN;
 
SELECT plan(1);
 
SELECT throws_ok(
 $$
 INSERT INTO customers(
     name,
     email
 )
 VALUES(
     'Ana',
     'juan@test.com'
 );
 $$,
 '23505'
);
 
SELECT * FROM finish();
 
ROLLBACK;
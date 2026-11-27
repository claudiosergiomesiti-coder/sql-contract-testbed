CREATE OR REPLACE FUNCTION passed_control_test_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM control_tests
WHERE test_result = 'PASS';
$$;
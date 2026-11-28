CREATE OR REPLACE FUNCTION calculate_control_score(
    passed_tests integer,
    total_tests integer
)
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN total_tests = 0 THEN 0
    ELSE ROUND((passed_tests::numeric / total_tests::numeric) * 100, 2)
END;
$$;
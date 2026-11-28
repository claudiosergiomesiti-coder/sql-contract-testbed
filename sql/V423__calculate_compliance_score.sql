CREATE OR REPLACE FUNCTION calculate_compliance_score(
    compliant_controls integer,
    total_controls integer
)
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN total_controls = 0 THEN 0
    ELSE ROUND(
        (compliant_controls::numeric / total_controls::numeric) * 100,
        2
    )
END;
$$;
CREATE OR REPLACE FUNCTION classify_control_effectiveness(
    score numeric
)
RETURNS text
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN score >= 90 THEN 'EFFECTIVE'
    WHEN score >= 70 THEN 'ADEQUATE'
    WHEN score >= 50 THEN 'WEAK'
    ELSE 'INEFFECTIVE'
END;
$$;
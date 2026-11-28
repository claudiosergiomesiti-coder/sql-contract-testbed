CREATE OR REPLACE FUNCTION classify_executive_kpi(
    score numeric
)
RETURNS text
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN score >= 90 THEN 'EXCELLENT'
    WHEN score >= 75 THEN 'GOOD'
    WHEN score >= 50 THEN 'ATTENTION'
    ELSE 'CRITICAL'
END;
$$;
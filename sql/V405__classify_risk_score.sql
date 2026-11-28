CREATE OR REPLACE FUNCTION classify_risk_score(
    score integer
)
RETURNS text
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN score <= 5 THEN 'LOW'
    WHEN score <= 10 THEN 'MEDIUM'
    WHEN score <= 15 THEN 'HIGH'
    ELSE 'CRITICAL'
END;
$$;
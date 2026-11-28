CREATE OR REPLACE FUNCTION classify_compliance_score(
    score numeric
)
RETURNS text
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN score >= 90 THEN 'COMPLIANT'
    WHEN score >= 75 THEN 'PARTIAL'
    WHEN score >= 50 THEN 'AT_RISK'
    ELSE 'NON_COMPLIANT'
END;
$$;
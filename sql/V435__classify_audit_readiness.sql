CREATE OR REPLACE FUNCTION classify_audit_readiness(
    score numeric
)
RETURNS text
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN score >= 90 THEN 'READY'
    WHEN score >= 75 THEN 'MOSTLY_READY'
    WHEN score >= 50 THEN 'PARTIALLY_READY'
    ELSE 'NOT_READY'
END;
$$;
CREATE OR REPLACE FUNCTION assigned_risk_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM risk_owners;
$$;
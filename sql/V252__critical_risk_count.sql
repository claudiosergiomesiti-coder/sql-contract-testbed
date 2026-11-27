CREATE OR REPLACE FUNCTION critical_risk_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM risk_register
WHERE risk_severity = 'CRITICAL';
$$;
CREATE OR REPLACE FUNCTION high_risk_threat_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM threat_classifications
WHERE risk_level IN ('HIGH', 'CRITICAL');
$$;
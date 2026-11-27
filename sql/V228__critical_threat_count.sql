CREATE OR REPLACE FUNCTION critical_threat_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM threat_classifications
WHERE risk_level = 'CRITICAL';
$$;
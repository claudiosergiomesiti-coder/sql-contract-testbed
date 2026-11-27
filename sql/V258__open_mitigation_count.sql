CREATE OR REPLACE FUNCTION open_mitigation_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM risk_mitigations
WHERE mitigation_status = 'OPEN';
$$;
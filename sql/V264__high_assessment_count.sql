CREATE OR REPLACE FUNCTION high_assessment_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM risk_assessments
WHERE assessment_status = 'HIGH';
$$;
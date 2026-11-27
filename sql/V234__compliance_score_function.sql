CREATE OR REPLACE FUNCTION compliance_score()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COALESCE(AVG(metric_value),0)::integer
FROM compliance_metrics;
$$;
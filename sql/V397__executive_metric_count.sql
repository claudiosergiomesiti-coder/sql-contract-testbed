CREATE OR REPLACE FUNCTION executive_metric_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM executive_metrics;
$$;
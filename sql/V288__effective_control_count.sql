CREATE OR REPLACE FUNCTION effective_control_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM control_effectiveness
WHERE effectiveness_status = 'EFFECTIVE';
$$;
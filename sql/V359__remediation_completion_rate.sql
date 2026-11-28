CREATE OR REPLACE FUNCTION remediation_completion_rate()
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT 0::numeric;
$$;
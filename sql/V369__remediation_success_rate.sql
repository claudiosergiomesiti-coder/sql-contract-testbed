CREATE OR REPLACE FUNCTION remediation_success_rate()
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT 0::numeric;
$$;
CREATE OR REPLACE FUNCTION audit_readiness_rate()
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT 0::numeric;
$$;
CREATE OR REPLACE FUNCTION executive_compliance_score()
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT 0::numeric;
$$;
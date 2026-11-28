CREATE OR REPLACE FUNCTION approval_completion_rate()
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT 0::numeric;
$$;
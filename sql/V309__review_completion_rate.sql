CREATE OR REPLACE FUNCTION review_completion_rate()
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT 0::numeric;
$$;
CREATE OR REPLACE FUNCTION validation_success_rate()
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT 0::numeric;
$$;
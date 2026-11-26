CREATE OR REPLACE FUNCTION mfa_method_count()
 
RETURNS integer
 
LANGUAGE SQL
 
AS
$$
SELECT COUNT(*)::integer
FROM mfa_methods;
$$;
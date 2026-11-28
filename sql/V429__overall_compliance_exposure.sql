CREATE OR REPLACE FUNCTION overall_compliance_exposure()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM compliance_scoring_model
WHERE compliance_rating = 'NON_COMPLIANT';
$$;

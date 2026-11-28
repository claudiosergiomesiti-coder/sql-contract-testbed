CREATE OR REPLACE FUNCTION effective_control_exposure()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM control_scoring_model
WHERE effectiveness_rating = 'INEFFECTIVE';
$$;
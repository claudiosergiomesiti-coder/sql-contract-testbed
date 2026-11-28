CREATE OR REPLACE FUNCTION critical_risk_exposure()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM risk_scoring_model
WHERE risk_rating = 'CRITICAL';
$$;
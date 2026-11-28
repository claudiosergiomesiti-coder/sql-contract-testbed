CREATE OR REPLACE FUNCTION executive_risk_exposure()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM executive_kpi_model
WHERE kpi_status = 'CRITICAL';
$$;
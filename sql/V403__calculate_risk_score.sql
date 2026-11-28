CREATE OR REPLACE FUNCTION calculate_risk_score(
    likelihood integer,
    impact integer
)
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT likelihood * impact;
$$;
CREATE OR REPLACE FUNCTION calculate_executive_kpi(
    risk_score numeric,
    control_score numeric,
    compliance_score numeric,
    readiness_score numeric
)
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT ROUND(
    (
        risk_score +
        control_score +
        compliance_score +
        readiness_score
    ) / 4,
    2
);
$$;
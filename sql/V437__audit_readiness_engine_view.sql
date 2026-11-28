CREATE OR REPLACE VIEW audit_readiness_engine_view AS
SELECT
    id,
    audit_area,
    readiness_score,
    readiness_rating
FROM audit_readiness_model;

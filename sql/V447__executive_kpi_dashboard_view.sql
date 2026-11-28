CREATE OR REPLACE VIEW executive_kpi_dashboard_view AS
SELECT
    id,
    kpi_name,
    kpi_value,
    kpi_status,
    created_at
FROM executive_kpi_model;
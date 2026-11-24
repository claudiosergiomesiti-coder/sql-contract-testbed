CREATE OR REPLACE VIEW monthly_revenue AS
SELECT
    DATE_TRUNC('month', CURRENT_DATE)::DATE AS month,
    COALESCE(SUM(amount), 0)::NUMERIC(10,2) AS revenue
FROM payments;
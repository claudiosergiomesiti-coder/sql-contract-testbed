CREATE OR REPLACE VIEW financial_dashboard_view
AS
SELECT
    revenue,
    costs,
    profit,
    CASE
        WHEN revenue = 0 THEN 0
        ELSE ROUND(
            (profit / revenue) * 100,
            2
        )
    END AS margin_percent
FROM profitability_view;
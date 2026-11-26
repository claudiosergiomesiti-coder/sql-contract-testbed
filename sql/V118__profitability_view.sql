CREATE OR REPLACE VIEW profitability_view
AS
SELECT
    get_total_revenue() AS revenue,
    total_supplier_spend() AS costs,
    get_total_revenue() - total_supplier_spend() AS profit;
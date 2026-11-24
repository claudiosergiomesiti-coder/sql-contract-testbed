CREATE OR REPLACE VIEW sales_dashboard AS
SELECT
    get_total_revenue() AS total_revenue,
    get_top_customer() AS top_customer,
    get_top_product() AS top_product,
    get_average_order_value() AS average_order_value,
    get_total_products_sold() AS total_products_sold;
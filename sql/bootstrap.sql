


-- =====================================================
-- CORE CUSTOMER MANAGEMENT
-- =====================================================
 
\i V003__create_customers.sql
 
\i V006__customers_email_unique.sql
 
\i V008__create_orders.sql
 
\i V008A__seed_test_data.sql
 
\i V014__customer_orders_view.sql
 
\i V016__get_customer_email_function.sql
 
\i V018__get_customer_total_spent_function.sql
 
\i V020__get_customer_order_count_function.sql
 
\i V022__get_customer_tier_function.sql
 
 
-- =====================================================
-- PRODUCT CATALOG
-- =====================================================
 
\i V024__create_products.sql
 
\i V026__create_order_items.sql
 
\i V076__create_categories.sql
 
\i V078__products_category_fk.sql
 
 
-- =====================================================
-- SALES OPERATIONS
-- =====================================================
 
\i V028__get_order_total_function.sql
 
\i V030__order_details_view.sql
 
\i V032__create_payments.sql
 
\i V034__get_customer_revenue_function.sql
 
\i V036__top_customers_view.sql
 
\i V038__top_products_view.sql
 
\i V040__get_total_revenue_function.sql
 
\i V042__get_top_customer_function.sql
 
\i V044__get_top_product_function.sql
 
 
-- =====================================================
-- BUSINESS ANALYTICS
-- =====================================================
 
\i V046__business_kpis_view.sql
 
\i V048__get_average_order_value_function.sql
 
\i V050__get_total_products_sold_function.sql
 
\i V052__monthly_revenue_view.sql
 
\i V054__top_5_customers_view.sql
 
\i V056__sales_dashboard_view.sql
 
\i V058__customer_segmentation_view.sql
 
\i V060__monthly_products_view.sql
 
\i V062__customer_lifetime_value_view.sql
 
\i V064__customer_retention_view.sql
 
\i V066__sales_forecast_view.sql
 
\i V068__product_performance_view.sql
 
\i V070__executive_scorecard_view.sql
 
\i V072__customer_health_score_view.sql
 
\i V074__executive_alerts_view.sql
 
 
-- =====================================================
-- INVENTORY MANAGEMENT
-- =====================================================
 
\i V080__create_inventory.sql
 
\i V082__inventory_alerts_view.sql
 
\i V084__get_low_stock_count_function.sql
 
\i V086__inventory_seed_data.sql
 
\i V088__inventory_status_view.sql
 
\i V090__low_stock_products_count_function.sql
 
\i V092__restock_products_view.sql
 
\i V094__out_of_stock_count_function.sql
 
\i V096__inventory_summary_view.sql
 
 
-- =====================================================
-- CUSTOMER LOYALTY
-- =====================================================
 
\i V098__customer_loyalty_view.sql
 
\i V100__customer_points_function.sql
 
\i V102__top_loyal_customers_view.sql
 
 
-- =====================================================
-- SUPPLIER MANAGEMENT
-- =====================================================
 
\i V104__create_suppliers.sql
 
\i V106__supplier_products_view.sql
 
\i V108__supplier_count_function.sql
 
 
-- =====================================================
-- PROCUREMENT
-- =====================================================
 
\i V110__create_purchase_orders.sql
 
\i V112__purchase_order_total_function.sql
 
\i V114__supplier_performance_view.sql
 
 
-- =====================================================
-- FINANCIAL ANALYTICS
-- =====================================================
 
\i V116__total_supplier_spend_function.sql
 
\i V118__profitability_view.sql
 
\i V120__financial_dashboard_view.sql
 
 
-- =====================================================
-- WAREHOUSE OPERATIONS
-- =====================================================
 
\i V122__create_warehouse_locations.sql
 
\i V124__inventory_by_location_view.sql
 
\i V126__warehouse_capacity_function.sql
 
 
-- =====================================================
-- SHIPPING & LOGISTICS
-- =====================================================
 
\i V128__create_shipments.sql
 
\i V130__shipment_status_view.sql
 
\i V132__shipment_count_function.sql
 
 
-- =====================================================
-- TRACKING & CARRIERS
-- =====================================================
 
\i V134__create_carriers.sql
 
\i V136__shipment_tracking_view.sql
 
\i V138__carrier_count_function.sql
 
 
-- =====================================================
-- NOTIFICATIONS & MONITORING
-- =====================================================
 
\i V140__create_notifications.sql
 
\i V142__notification_status_view.sql
 
\i V144__notification_count_function.sql


-- =====================================================
-- AUDIT & COMPLIANCE
-- =====================================================
 
\i V146__create_audit_events.sql
 
\i V148__audit_summary_view.sql
 
\i V150__audit_event_count_function.sql


-- =====================================================
-- SECURITY & ACCESS CONTROL
-- =====================================================
 
\i V152__create_roles.sql
 
\i V154__role_summary_view.sql
 
\i V156__role_count_function.sql

\i V158__create_users.sql
 
\i V160__user_summary_view.sql
 
\i V162__user_count_function.sql

\i V164__create_permissions.sql
 
\i V166__permission_summary_view.sql
 
\i V168__permission_count_function.sql

\i V170__create_role_permissions.sql
 
\i V172__role_permissions_view.sql
 
\i V174__role_permission_count_function.sql

\i V176__create_user_permissions.sql
 
\i V178__user_permissions_view.sql
 
\i V180__user_permission_count_function.sql

\i V182__create_sessions.sql
 
\i V184__active_sessions_view.sql
 
\i V186__session_count_function.sql

\i V188__create_login_events.sql
 
\i V190__login_events_view.sql
 
\i V192__login_event_count_function.sql

\i V194__create_password_policies.sql
 
\i V196__account_security_view.sql
 
\i V198__security_event_count_function.sql

\i V200__create_mfa_methods.sql
 
\i V202__mfa_summary_view.sql
 
\i V204__mfa_method_count_function.sql

\i V206__create_security_incidents.sql
 
\i V208__security_incidents_view.sql
 
\i V210__security_incident_count_function.sql

\i V212__create_incident_responses.sql
 
\i V214__incident_responses_view.sql
 
\i V216__open_incident_count.sql

\i V218__create_threat_classifications.sql
 
\i V220__threat_summary_view.sql
 
\i V222__high_risk_threat_count.sql

\i V224__create_security_metrics.sql
 
\i V226__security_dashboard_view.sql
 
\i V228__critical_threat_count.sql

\i V230__create_compliance_metrics.sql
 
\i V232__compliance_dashboard_view.sql
 
\i V234__compliance_score_function.sql

\i V236__create_security_controls.sql
 
\i V238__security_controls_view.sql
 
\i V240__active_controls_count.sql

\i V242__create_security_policies.sql
 
\i V244__security_policies_view.sql
 
\i V246__active_policy_count.sql

\i V248__create_risk_register.sql
 
\i V250__risk_register_view.sql
 
\i V252__critical_risk_count.sql

\i V254__create_risk_mitigations.sql
 
\i V256__risk_mitigations_view.sql
 
\i V258__open_mitigation_count.sql

\i V260__create_risk_assessments.sql
 
\i V262__risk_assessment_view.sql
 
\i V264__high_assessment_count.sql

\i V266__create_risk_reviews.sql
 
\i V268__risk_reviews_view.sql
 
\i V270__open_review_count.sql
 
\i V272__create_risk_owners.sql
 
\i V274__risk_owners_view.sql
 
\i V276__assigned_risk_count.sql

\i V278__create_risk_escalations.sql
 
\i V280__risk_escalations_view.sql
 
\i V282__open_escalation_count.sql

\i V284__create_control_effectiveness.sql
 
\i V286__control_effectiveness_view.sql
 
\i V288__effective_control_count.sql

\i V290__create_control_tests.sql
 
\i V292__control_tests_view.sql
 
\i V294__passed_control_test_count.sql

\i V296__create_policy_exceptions.sql
 
\i V298__policy_exceptions_view.sql
 
\i V300__open_exception_count.sql

\i V301__create_access_review_campaigns.sql
 
\i V303__create_access_review_items.sql
 
\i V305__access_review_dashboard_view.sql
 
\i V307__pending_review_count.sql
 
\i V309__review_completion_rate.sql

\i V311__create_sod_rules.sql

\i V313__create_sod_violations.sql

\i V315__sod_dashboard_view.sql

\i V317__open_sod_violation_count.sql

\i V319__sod_compliance_rate.sql

\i V321__create_exception_requests.sql

\i V323__create_exception_approvals.sql

\i V325__exception_workflow_dashboard_view.sql

\i V327__pending_exception_count.sql

\i V329__approval_completion_rate.sql

\i V331__create_audit_evidence.sql

\i V333__create_evidence_reviews.sql

\i V335__audit_evidence_dashboard_view.sql

\i V337__pending_evidence_review_count.sql

\i V339__evidence_completion_rate.sql

\i V341__create_audit_findings.sql

\i V343__create_finding_remediations.sql

\i V345__audit_findings_dashboard_view.sql

\i V347__open_finding_count.sql

\i V349__finding_resolution_rate.sql

\i V351__create_remediation_plans.sql

\i V353__create_remediation_tasks.sql

\i V355__remediation_dashboard_view.sql

\i V357__open_remediation_task_count.sql

\i V359__remediation_completion_rate.sql

\i V361__create_remediation_tracking.sql

\i V363__create_remediation_closures.sql

\i V365__remediation_tracking_dashboard_view.sql

\i V367__closed_remediation_count.sql

\i V369__remediation_success_rate.sql

\i V371__create_closure_validations.sql
 
\i V373__create_validation_approvals.sql
 
\i V375__closure_validation_dashboard_view.sql
 
\i V377__approved_validation_count.sql
 
\i V379__validation_success_rate.sql

\i V381__create_audit_readiness.sql

\i V383__create_readiness_reviews.sql

\i V385__audit_readiness_dashboard_view.sql

\i V387__ready_audit_count.sql

\i V389__audit_readiness_rate.sql

\i V391__create_executive_metrics.sql

\i V393__create_dashboard_snapshots.sql

\i V395__executive_dashboard_view.sql

\i V397__executive_metric_count.sql

\i V399__executive_compliance_score.sql















-- =====================================================
-- CORE CUSTOMER MANAGEMENT TESTS
-- =====================================================
 
\i sql/V004__customers_tests.sql
 
\i sql/V005__customers_constraints_tests.sql
 
\i sql/V007__customers_unique_tests.sql
 
\i sql/V009__orders_fk_tests.sql
 
\i sql/V010__customers_data_tests.sql
 
\i sql/V015__customer_orders_view_tests.sql
 
\i sql/V017__get_customer_email_function_tests.sql
 
\i sql/V019__get_customer_total_spent_tests.sql
 
\i sql/V021__get_customer_order_count_tests.sql
 
\i sql/V023__get_customer_tier_tests.sql
 
 
-- =====================================================
-- PRODUCT CATALOG TESTS
-- =====================================================
 
\i sql/V025__products_tests.sql
 
\i sql/V027__order_items_tests.sql
 
\i sql/V077__categories_tests.sql
 
\i sql/V079__products_category_fk_tests.sql
 
 
-- =====================================================
-- SALES OPERATIONS TESTS
-- =====================================================
 
\i sql/V033__payments_tests.sql
 
\i sql/V035__get_customer_revenue_tests.sql
 
\i sql/V037__top_customers_view_tests.sql
 
\i sql/V039__top_products_view_tests.sql
 
\i sql/V041__get_total_revenue_tests.sql
 
\i sql/V045__get_top_product_tests.sql
 
 
-- =====================================================
-- BUSINESS ANALYTICS TESTS
-- =====================================================
 
\i sql/V047__business_kpis_view_tests.sql
 
\i sql/V049__get_average_order_value_tests.sql
 
\i sql/V051__get_total_products_sold_tests.sql
 
\i sql/V053__monthly_revenue_view_tests.sql
 
\i sql/V055__top_5_customers_view_tests.sql
 
\i sql/V057__sales_dashboard_view_tests.sql
 
\i sql/V059__customer_segmentation_view_tests.sql
 
\i sql/V061__monthly_products_view_tests.sql
 
\i sql/V063__customer_lifetime_value_view_tests.sql
 
\i sql/V065__customer_retention_view_tests.sql
 
\i sql/V067__sales_forecast_view_tests.sql
 
\i sql/V069__product_performance_view_tests.sql
 
\i sql/V071__executive_scorecard_view_tests.sql
 
\i sql/V073__customer_health_score_view_tests.sql
 
\i sql/V075__executive_alerts_view_tests.sql
 
 
-- =====================================================
-- INVENTORY MANAGEMENT TESTS
-- =====================================================
 
\i sql/V081__inventory_tests.sql
 
\i sql/V083__inventory_alerts_view_tests.sql
 
\i sql/V085__get_low_stock_count_tests.sql
 
\i sql/V087__inventory_seed_data_tests.sql
 
\i sql/V089__inventory_status_view_tests.sql
 
\i sql/V091__low_stock_products_count_function_tests.sql
 
\i sql/V093__restock_products_view_tests.sql
 
\i sql/V095__out_of_stock_count_tests.sql
 
\i sql/V097__inventory_summary_view_tests.sql
 
 
-- =====================================================
-- CUSTOMER LOYALTY TESTS
-- =====================================================
 
\i sql/V099__customer_loyalty_view_tests.sql
 
\i sql/V101__customer_points_function_tests.sql
 
\i sql/V103__top_loyal_customers_view_tests.sql
 
 
-- =====================================================
-- SUPPLIER MANAGEMENT TESTS
-- =====================================================
 
\i sql/V105__suppliers_tests.sql
 
\i sql/V107__supplier_products_view_tests.sql
 
\i sql/V109__supplier_count_function_tests.sql
 
 
-- =====================================================
-- PROCUREMENT TESTS
-- =====================================================
 
\i sql/V111__purchase_orders_tests.sql
 
\i sql/V113__purchase_order_total_tests.sql
 
\i sql/V115__supplier_performance_view_tests.sql
 
 
-- =====================================================
-- FINANCIAL ANALYTICS TESTS
-- =====================================================
 
\i sql/V117__total_supplier_spend_tests.sql
 
\i sql/V119__profitability_view_tests.sql
 
\i sql/V121__financial_dashboard_view_tests.sql
 
 
-- =====================================================
-- WAREHOUSE OPERATIONS TESTS
-- =====================================================
 
\i sql/V123__warehouse_locations_tests.sql
 
\i sql/V125__inventory_by_location_tests.sql
 
\i sql/V127__warehouse_capacity_tests.sql
 
 
-- =====================================================
-- SHIPPING & LOGISTICS TESTS
-- =====================================================
 
\i sql/V129__shipments_tests.sql
 
\i sql/V131__shipment_status_view_tests.sql
 
\i sql/V133__shipment_count_function_tests.sql
 
 
-- =====================================================
-- TRACKING & CARRIERS TESTS
-- =====================================================
 
\i sql/V135__carriers_tests.sql
 
\i sql/V137__shipment_tracking_view_tests.sql
 
\i sql/V139__carrier_count_function_tests.sql
 
 
-- =====================================================
-- NOTIFICATIONS & MONITORING TESTS
-- =====================================================
 
\i sql/V141__notifications_tests.sql
 
\i sql/V143__notification_status_view_tests.sql
 
\i sql/V145__notification_count_function_tests.sql



-- =====================================================
-- AUDIT & COMPLIANCE TESTS
-- =====================================================
 
\i sql/V147__audit_events_tests.sql
 
\i sql/V149__audit_summary_view_tests.sql
 
\i sql/V151__audit_event_count_function_tests.sql


-- =====================================================
-- SECURITY & ACCESS CONTROL TESTS
-- =====================================================
 
\i sql/V153__roles_tests.sql
 
\i sql/V155__role_summary_view_tests.sql
 
\i sql/V157__role_count_function_tests.sql

\i sql/V159__users_tests.sql
 
\i sql/V161__user_summary_view_tests.sql
 
\i sql/V163__user_count_function_tests.sql

\i sql/V165__permissions_tests.sql
 
\i sql/V167__permission_summary_view_tests.sql
 
\i sql/V169__permission_count_function_tests.sql

\i sql/V171__role_permissions_tests.sql
 
\i sql/V173__role_permissions_view_tests.sql
 
\i sql/V175__role_permission_count_function_tests.sql

\i sql/V177__user_permissions_tests.sql
 
\i sql/V179__user_permissions_view_tests.sql
 
\i sql/V181__user_permission_count_function_tests.sql

\i sql/V183__sessions_tests.sql
 
\i sql/V185__active_sessions_view_tests.sql
 
\i sql/V187__session_count_function_tests.sql

\i sql/V189__login_events_tests.sql
 
\i sql/V191__login_events_view_tests.sql
 
\i sql/V193__login_event_count_function_tests.sql

\i sql/V195__password_policies_tests.sql
 
\i sql/V197__account_security_view_tests.sql
 
\i sql/V199__security_event_count_function_tests.sql

\i sql/V201__mfa_methods_tests.sql
 
\i sql/V203__mfa_summary_view_tests.sql
 
\i sql/V205__mfa_method_count_function_tests.sql

\i sql/V207__security_incidents_tests.sql
 
\i sql/V209__security_incidents_view_tests.sql
 
\i sql/V211__security_incident_count_function_tests.sql

\i sql/V213__incident_responses_tests.sql
 
\i sql/V215__incident_responses_view_tests.sql
 
\i sql/V217__open_incident_count_tests.sql

\i sql/V219__threat_classifications_tests.sql
 
\i sql/V221__threat_summary_view_tests.sql
 
\i sql/V223__high_risk_threat_count_tests.sql

\i sql/V225__security_metrics_tests.sql
 
\i sql/V227__security_dashboard_view_tests.sql
 
\i sql/V229__critical_threat_count_tests.sql

\i sql/V231__compliance_metrics_tests.sql
 
\i sql/V233__compliance_dashboard_view_tests.sql
 
\i sql/V235__compliance_score_function_tests.sql

\i sql/V237__security_controls_tests.sql
 
\i sql/V239__security_controls_view_tests.sql
 
\i sql/V241__active_controls_count_tests.sql

\i sql/V243__security_policies_tests.sql
 
\i sql/V245__security_policies_view_tests.sql
 
\i sql/V247__active_policy_count_tests.sql

\i sql/V249__risk_register_tests.sql
 
\i sql/V251__risk_register_view_tests.sql
 
\i sql/V253__critical_risk_count_tests.sql

\i sql/V255__risk_mitigations_tests.sql
 
\i sql/V257__risk_mitigations_view_tests.sql
 
\i sql/V259__open_mitigation_count_tests.sql

\i sql/V261__risk_assessments_tests.sql
 
\i sql/V263__risk_assessment_view_tests.sql
 
\i sql/V265__high_assessment_count_tests.sql

\i sql/V267__risk_reviews_tests.sql
 
\i sql/V269__risk_reviews_view_tests.sql
 
\i sql/V271__open_review_count_tests.sql
 
\i sql/V273__risk_owners_tests.sql
 
\i sql/V275__risk_owners_view_tests.sql
 
\i sql/V277__assigned_risk_count_tests.sql

\i sql/V279__risk_escalations_tests.sql
 
\i sql/V281__risk_escalations_view_tests.sql
 
\i sql/V283__open_escalation_count_tests.sql

\i sql/V285__control_effectiveness_tests.sql
 
\i sql/V287__control_effectiveness_view_tests.sql
 
\i sql/V289__effective_control_count_tests.sql

\i sql/V291__control_tests_tests.sql
 
\i sql/V293__control_tests_view_tests.sql
 
\i sql/V295__passed_control_test_count_tests.sql

\i sql/V297__policy_exceptions_tests.sql
 
\i sql/V299__policy_exceptions_view_tests.sql

\i sql/V302__access_review_campaigns_tests.sql
 
\i sql/V304__access_review_items_tests.sql
 
\i sql/V306__access_review_dashboard_view_tests.sql
 
\i sql/V308__pending_review_count_tests.sql
 
\i sql/V310__review_completion_rate_tests.sql

\i sql/V312__sod_rules_tests.sql

\i sql/V314__sod_violations_tests.sql

\i sql/V316__sod_dashboard_view_tests.sql

\i sql/V318__open_sod_violation_count_tests.sql

\i sql/V320__sod_compliance_rate_tests.sql

\i sql/V322__exception_requests_tests.sql

\i sql/V324__exception_approvals_tests.sql

\i sql/V326__exception_workflow_dashboard_view_tests.sql

\i sql/V328__pending_exception_count_tests.sql

\i sql/V330__approval_completion_rate_tests.sql

\i sql/V332__audit_evidence_tests.sql

\i sql/V334__evidence_reviews_tests.sql

\i sql/V336__audit_evidence_dashboard_view_tests.sql

\i sql/V338__pending_evidence_review_count_tests.sql

\i sql/V340__evidence_completion_rate_tests.sql

\i sql/V342__audit_findings_tests.sql

\i sql/V344__finding_remediations_tests.sql

\i sql/V346__audit_findings_dashboard_view_tests.sql

\i sql/V348__open_finding_count_tests.sql

\i sql/V350__finding_resolution_rate_tests.sql

\i sql/V352__remediation_plans_tests.sql

\i sql/V354__remediation_tasks_tests.sql

\i sql/V356__remediation_dashboard_view_tests.sql

\i sql/V358__open_remediation_task_count_tests.sql

\i sql/V360__remediation_completion_rate_tests.sql

\i sql/V362__remediation_tracking_tests.sql

\i sql/V364__remediation_closures_tests.sql

\i sql/V366__remediation_tracking_dashboard_view_tests.sql

\i sql/V368__closed_remediation_count_tests.sql

\i sql/V370__remediation_success_rate_tests.sql

\i sql/V372__closure_validations_tests.sql
 
\i sql/V374__validation_approvals_tests.sql
 
\i sql/V376__closure_validation_dashboard_view_tests.sql
 
\i sql/V378__approved_validation_count_tests.sql
 
\i sql/V380__validation_success_rate_tests.sql

\i sql/V382__audit_readiness_tests.sql

\i sql/V384__readiness_reviews_tests.sql

\i sql/V386__audit_readiness_dashboard_view_tests.sql

\i sql/V388__ready_audit_count_tests.sql

\i sql/V390__audit_readiness_rate_tests.sql

\i sql/V392__executive_metrics_tests.sql

\i sql/V394__dashboard_snapshots_tests.sql

\i sql/V396__executive_dashboard_view_tests.sql

\i sql/V398__executive_metric_count_tests.sql

\i sql/V400__executive_compliance_score_tests.sql

\i sql/V402__risk_scoring_model_tests.sql

\i sql/V404__calculate_risk_score_tests.sql

\i sql/V406__classify_risk_score_tests.sql

\i sql/V408__risk_score_dashboard_view_tests.sql

\i sql/V410__critical_risk_exposure_tests.sql

\i sql/V412__control_scoring_model_tests.sql

\i sql/V414__calculate_control_score_tests.sql

\i sql/V416__classify_control_effectiveness_tests.sql

\i sql/V418__control_score_dashboard_view_tests.sql

\i sql/V420__effective_control_exposure_tests.sql










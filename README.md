
SQL Contract Testbed
Descripción
SQL Contract Testbed es una plataforma de pruebas automatizadas para contratos SQL basada en PostgreSQL, pgTAP y pg_prove.
El proyecto permite validar tablas, restricciones, claves foráneas, funciones, vistas y reglas de negocio mediante una suite de pruebas completamente automatizada que puede ejecutarse tanto localmente como desde GitHub Actions.
Su objetivo es proporcionar una arquitectura SQL mantenible, verificable y orientada a la calidad mediante migraciones versionadas y pruebas automáticas continuas.
Estado actual
Versión actual: v5.9-policy-exceptions
Última migración: V300
Estado CI/CD: ✅ PASS
GitHub Actions: ✅ Operativo
Trabajo completo: ✅
Última actualización: 2026-11-27
Tecnologías
PostgreSQL 16.16
pgTAP 1.3.4
pg_prove 3.37
Docker Desktop
Docker Compose
WSL2
Ubuntu
GitHub Actions
PowerShell
Infraestructura validada
Sistema
Windows 11
WSL2
Ubuntu
Contenedores
Docker Desktop ✅
Docker Compose ✅
Base de datos
Verificada mediante:
SELECT version();
Resultado:
PostgreSQL 16.16
Bases verificadas:
contract_db
postgres
template0
template1
pgTAP
Verificación:
SELECT extname, extversion
FROM pg_extension;
Extensiones instaladas:
Extension
Version
plpgsql
1.0
pgtap
1.3.4
Estado:
PostgreSQL 16.16 ✅
pgTAP 1.3.4 ✅
Scripts PowerShell
bootstrap.ps1
parse-tap.ps1
generate-report.ps1
validate-report.ps1
actualizar-readme.ps1
Artefactos generados
postgres-version.txt
pgtap-version.txt
pgprove-version.txt
pgprove-sample.log
validation-report.json
Suite de pruebas
Estado actual:
PASS
Resumen:
Tests ejecutados: 300+
Fallos: 0
Cobertura:
Tablas
Restricciones
Claves foráneas
Datos de prueba
Funciones SQL
Vistas SQL
Reglas de negocio
Seguridad
Auditoría
Compliance
Risk Management
Governance
CI/CD
Pipeline automatizado mediante GitHub Actions.
Workflow principal:
Checkout
Build Image
Start Container
Wait PostgreSQL
Verify PostgreSQL
Create pgTAP Extension
Copy SQL Folder
Run Bootstrap
Ejecutar Suite Completa
Resultado actual:
✅ Trabajo completo
✅ Suite completa ejecutada
✅ bootstrap.sql operativo
✅ all-tests.sql operativo
✅ Pipeline GitHub Actions estable
Arquitectura
✅ bootstrap.sql organizado por dominios
✅ all-tests.sql organizado por dominios
✅ PostgreSQL 16.16
✅ pgTAP 1.3.4
✅ pg_prove 3.37
✅ GitHub Actions
✅ CI/CD estable
✅ Más de 300 migraciones y pruebas automatizadas
Dominios implementados
Business
✅ Sales
✅ Product Catalog
✅ Inventory Management
✅ Warehouse Operations
✅ Supplier Management
✅ Procurement
✅ Financial Analytics
✅ Customer Loyalty
Logistics
✅ Shipping
✅ Tracking
✅ Carriers
✅ Shipment Management
Monitoring
✅ Notifications
✅ Monitoring
✅ Alerts
✅ Audit Events
✅ Audit Summary
✅ Compliance Foundation
Security
Identity & Access Management
✅ Roles
✅ Users
✅ Permissions
✅ Role Permissions
✅ User Permissions
✅ RBAC Foundation
Authentication
✅ Sessions
✅ Login Events
✅ Password Policies
✅ MFA Methods
Security Operations
✅ Security Incidents
✅ Incident Response
Threat Intelligence
✅ Threat Classifications
✅ Threat Monitoring
Security Analytics
✅ Security Metrics
✅ Security Dashboard
Governance, Risk & Compliance (GRC)
Compliance
✅ Compliance Metrics
✅ Compliance Dashboard
✅ Compliance Score
Governance
✅ Security Controls
✅ Control Effectiveness
✅ Control Testing
Policies
✅ Security Policies
✅ Policy Exceptions
Risk Management
✅ Risk Register
✅ Risk Assessments
✅ Risk Reviews
✅ Risk Ownership
✅ Risk Mitigation
✅ Risk Escalation
Hito actual
V300 - Policy Exceptions
Completado:
✅ Security Incidents
✅ Incident Response
✅ Threat Intelligence
✅ Security Dashboard
✅ Compliance Analytics
✅ Security Governance
✅ Security Policies
✅ Risk Register
✅ Risk Assessments
✅ Risk Reviews
✅ Risk Ownership
✅ Risk Mitigation
✅ Risk Escalation
✅ Control Effectiveness
✅ Control Testing
✅ Policy Exceptions
Estado:
✅ Suite completa PASS
✅ CI/CD estable
✅ Arquitectura organizada
Historial de versiones
Plataforma
v0.2-ci-bootstrap
v0.3-github-bootstrap-pass
v1.0-pgtap-ci
v1.1-reporting
v1.3-business-model
v1.4-analytics
v1.5-executive-metrics
v2-github-actions-baseline
v2.1-github-actions-stable
v2.2-business-platform
v2.3-financial-analytics
Logistics & Audit
v3.0-warehouse-operations
v3.1-shipping-logistics
v3.2-tracking-carriers
v3.3-notifications-monitoring
v3.4-architecture-cleanup
v3.5-audit-compliance
Security
v3.6-security-access-control
v3.7-users-management
v3.8-permissions-management
v3.9-role-permissions
v4.0-rbac-foundation
v4.1-authentication-sessions
v4.2-login-events-audit
v4.3-security-foundation
v4.4-mfa-foundation
v4.5-security-incidents
v4.6-incident-response
v4.7-threat-intelligence
v4.8-security-dashboard
v4.9-compliance-analytics
Governance, Risk & Compliance
v5.0-security-governance
v5.1-security-policies
v5.2-risk-register
v5.3-risk-mitigation
v5.7-grc-foundation
v5.9-policy-exceptions
Backups
sql-contract-testbed-backup.zip
sql-contract-testbed-postgres-real.zip
sql-contract-testbed-before-pgtap.zip
sql-contract-testbed-pgtap-working.zip
sql-contract-testbed-v0.1-operativo.zip
Próxima etapa
V301+
Evolución del proyecto hacia funcionalidades de mayor valor:
Access Review Campaigns
Segregation of Duties
Exception Approval Workflows
Executive Risk Dashboards
Advanced GRC Workflows
Security Governance Automation
Estado General
✅ PostgreSQL
✅ pgTAP
✅ Docker
✅ GitHub Actions
✅ Business Domains
✅ Logistics Domains
✅ Audit Domains
✅ Security Platform
✅ Governance, Risk & Compliance
✅ V300
✅ PASS

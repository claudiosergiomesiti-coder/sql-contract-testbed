
SQL Contract Testbed
Descripción
Entorno de pruebas automatizadas para contratos SQL utilizando PostgreSQL, pgTAP y pg_prove.

El proyecto permite validar esquemas, restricciones, funciones, vistas y reglas de negocio mediante una suite automatizada ejecutable tanto en entorno local como mediante GitHub Actions.

Estado actual
Versión actual: v4.4-mfa-foundation

Última migración: V205

Estado CI/CD: ✅ PASS

GitHub Actions: ✅ Operativo

Trabajo completo: ✅

Última actualización: 2026-11-26

Tecnologías
PostgreSQL 16.16
pgTAP 1.3.4
pg_prove 3.37
Docker Desktop
Docker Compose
WSL2
Ubuntu
GitHub Actions
Infraestructura validada
Sistema
Windows 11
WSL2
Ubuntu
Contenedores
Docker Desktop operativo
Docker Compose operativo
Base de datos
Verificada mediante:

SELECT version();
Resultado:

PostgreSQL 16.16 (Debian 16.16-1.pgdg13+1)
Bases verificadas:

contract_db
postgres
template0
template1
pgTAP
Extensiones instaladas:

SELECT extname, extversion
FROM pg_extension;
Resultado:

Extension	Version
plpgsql	1.0
pgtap	1.3.4
Estado:

PostgreSQL 16.16 ✅
pgTAP 1.3.4 ✅
Componentes validados
Scripts PowerShell
bootstrap.ps1
parse-tap.ps1
generate-report.ps1
validate-report.ps1
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

Tests ejecutados: 200+
Fallos: 0
Incluye validaciones de:

Tablas
Restricciones
Claves foráneas
Datos de prueba
Funciones SQL
Vistas SQL
Reglas de negocio
Seguridad
Auditoría
CI/CD
Pipeline automatizado mediante GitHub Actions.

Workflow principal:

Checkout
Build image
Start container
Wait PostgreSQL
Verify PostgreSQL
Create pgTAP extension
Copy SQL folder
Run bootstrap
Ejecutar suite completa
Resultado:

✅ Trabajo completo

✅ Suite completa ejecutada

✅ all-tests.sql operativo

✅ bootstrap.sql operativo

✅ Workflow simplificado

✅ Pipeline GitHub Actions estable

Arquitectura
✅ bootstrap.sql organizado por dominios

✅ all-tests.sql organizado por dominios

✅ PostgreSQL 16.16

✅ pgTAP 1.3.4

✅ pg_prove 3.37

✅ GitHub Actions

✅ CI/CD estable

✅ Más de 200 migraciones y pruebas automatizadas

Módulos implementados
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
✅ Roles

✅ Users

✅ Permissions

✅ Role Permissions

✅ User Permissions

✅ Sessions

✅ Login Events

✅ Password Policies

✅ MFA Methods

✅ RBAC Foundation

Hito actual
V205 - MFA Foundation
✅ Roles

✅ Users

✅ Permissions

✅ Role Permissions

✅ User Permissions

✅ Sessions

✅ Login Events

✅ Password Policies

✅ MFA Methods

✅ Suite completa PASS

Historial de versiones
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
v3.0-warehouse-operations
v3.5-audit-compliance
v3.6-security-access-control
v3.7-users-management
v3.8-permissions-management
v3.9-role-permissions
v4.0-rbac-foundation
v4.1-authentication-sessions
v4.2-login-events-audit
v4.3-security-foundation
v4.4-mfa-foundation
Git
Commit base estable
d54224cc8c0d28d5b9dd6cf9cb350d0425644564
Descripción:

Primer entorno PostgreSQL + pgTAP operativo.

Backups
sql-contract-testbed-backup.zip
sql-contract-testbed-postgres-real.zip
sql-contract-testbed-before-pgtap.zip
sql-contract-testbed-pgtap-working.zip
sql-contract-testbed-v0.1-operativo.zip
Próximo objetivo
V206–V211
Authentication Enhancement

MFA Enforcement
Security Incidents
Threat Monitoring
Advanced Authentication Controls
Estado actual:

✅ V205

✅ PASS

✅ CI/CD estable

✅ Arquitectura organizada

✅ MFA Foundation completada

\# SQL Contract Testbed

&#x20;

\## Descripción

&#x20;

Entorno de pruebas automatizadas para contratos SQL utilizando PostgreSQL, pgTAP y pg\_prove.

&#x20;

El proyecto permite validar esquemas, restricciones, funciones, vistas y reglas de negocio mediante una suite automatizada ejecutable tanto en entorno local como en GitHub Actions.

&#x20;

\---

&#x20;

\## Estado actual

&#x20;

\*\*Versión estable:\*\* `v1.0-pgtap-ci`

&#x20;

\*\*Estado general:\*\* ✅ PASS

&#x20;

\*\*Trabajo completo:\*\* ✅

&#x20;

\*\*GitHub Actions:\*\* ✅

&#x20;

\*\*Suite automatizada:\*\* ✅

&#x20;

\---

&#x20;

\## Tecnologías

&#x20;

\- PostgreSQL 16.16

\- pgTAP 1.3.4

\- pg\_prove 3.37

\- Docker Desktop

\- Docker Compose

\- WSL2

\- Ubuntu

\- GitHub Actions

&#x20;

\---

&#x20;

\## Infraestructura validada

&#x20;

\### Sistema

&#x20;

\- Windows 11

\- WSL2

\- Ubuntu

&#x20;

\### Contenedores

&#x20;

\- Docker Desktop operativo

\- Docker Compose operativo

&#x20;

\### Base de datos

&#x20;

Verificada mediante:

&#x20;

```sql

SELECT version();

```

&#x20;

Resultado:

&#x20;

```text

PostgreSQL 16.16 (Debian 16.16-1.pgdg13+1)

```

&#x20;

Bases verificadas:

&#x20;

\- contract\_db

\- postgres

\- template0

\- template1

&#x20;

\---

&#x20;

\## pgTAP

&#x20;

Extensiones instaladas:

&#x20;

```sql

SELECT extname, extversion

FROM pg\_extension;

```

&#x20;

Resultado:

&#x20;

| Extension | Version |

|-----------|----------|

| plpgsql | 1.0 |

| pgtap | 1.3.4 |

&#x20;

Estado:

&#x20;

\- PostgreSQL 16.16 ✅

\- pgTAP 1.3.4 ✅

&#x20;

\---

&#x20;

\## Primera prueba pgTAP

&#x20;

Prueba ejecutada:

&#x20;

```sql

SELECT plan(1);

SELECT pass('Hello pgTAP');

SELECT \* FROM finish();

```

&#x20;

Resultado:

&#x20;

```text

1..1

ok 1 - Hello pgTAP

```

&#x20;

Estado:

&#x20;

\- PostgreSQL ✅

\- pgTAP ✅

\- Primera prueba ejecutada ✅

&#x20;

\---

&#x20;

\## Componentes validados

&#x20;

\### Scripts PowerShell

&#x20;

\- bootstrap.ps1

\- parse-tap.ps1

\- generate-report.ps1

\- validate-report.ps1

&#x20;

\### Artefactos generados

&#x20;

\- postgres-version.txt

\- pgtap-version.txt

\- pgprove-version.txt

\- pgprove-sample.log

\- validation-report.json

&#x20;

\---

&#x20;

\## Suite de pruebas

&#x20;

Estado actual:

&#x20;

```text

PASS

```

&#x20;

Resumen:

&#x20;

\- Tests ejecutados: 29

\- Fallos: 0

&#x20;

Incluye validaciones de:

&#x20;

\- Tablas

\- Restricciones

\- Claves foráneas

\- Datos de prueba

\- Funciones SQL

\- Vistas SQL

\- Reglas de negocio

&#x20;

\---

&#x20;

\## CI/CD

&#x20;

Pipeline automatizado mediante GitHub Actions.

&#x20;

Workflow actual:

&#x20;

1\. Checkout

2\. Build image

3\. Start container

4\. Wait PostgreSQL

5\. Verify PostgreSQL

6\. Create pgTAP extension

7\. Copy SQL folder

8\. Run bootstrap

9\. Ejecutar suite completa

&#x20;

Resultado:



✅ Trabajo completo



✅ Suite completa ejecutada



✅ all-tests.sql operativo



✅ bootstrap.sql operativo



✅ Workflow simplificado



✅ Ejecución mediante all-tests.sql



✅ Pipeline GitHub Actions estable 

\---

&#x20;

\## Git

&#x20;

\### Commit base estable

&#x20;

```text

d54224cc8c0d28d5b9dd6cf9cb350d0425644564

```

&#x20;

Descripción:

&#x20;

Primer entorno PostgreSQL + pgTAP operativo.

&#x20;

\### Versión estable actual

&#x20;

```text

v2.1-github-actions-stable```

&#x20;

\---

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

&#x20;

\## Backups

&#x20;

\- sql-contract-testbed-backup.zip

\- sql-contract-testbed-postgres-real.zip

\- sql-contract-testbed-before-pgtap.zip

\- sql-contract-testbed-pgtap-working.zip

\- sql-contract-testbed-v0.1-operativo.zip

&#x20;

\---

&#x20;

\## Hitos alcanzados

&#x20;

✅ PostgreSQL 16.16 operativo

&#x20;

✅ pgTAP 1.3.4 operativo

&#x20;

✅ pg\_prove 3.37 operativo

&#x20;

✅ Docker Desktop operativo

&#x20;

✅ Docker Compose operativo

&#x20;

✅ WSL2 operativo

&#x20;

✅ Generación de informes JSON

&#x20;

✅ Validación de informes

&#x20;

✅ bootstrap.sql

&#x20;

✅ all-tests.sql

&#x20;

✅ GitHub Actions

&#x20;

✅ Suite automatizada

&#x20;

✅ v2.1-github-actions-stable



Módulos implementados



✅ Sales



✅ Inventory



✅ Analytics



✅ Executive Metrics



✅ Loyalty



✅ Suppliers


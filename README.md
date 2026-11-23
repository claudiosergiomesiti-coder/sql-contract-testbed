SQL Contract Testbed

Estado actual:



Bootstrap funcional.

Parser TAP funcional.

Informe JSON funcional.

Artefactos disponibles:



postgres-version.txt

pgtap-version.txt

pgprove-version.txt

pgprove-sample.log

validation-report.json

Estado: PASS



Estado actual

Entorno

Windows 11

WSL2

Ubuntu

Docker Desktop

Docker Compose

PostgreSQL 16.16

Validado

bootstrap.ps1

parse-tap.ps1

generate-report.ps1

validate-report.ps1

PostgreSQL real

Verificado mediante:



SELECT version();

Resultado:



PostgreSQL 16.16 (Debian 16.16-1.pgdg13+1)



Hito alcanzado

Fecha: 18/11/2026



Entorno real operativo

WSL2 instalado

Ubuntu instalado

Docker Desktop operativo

Docker Compose operativo

PostgreSQL 16.16 operativo

Verificaciones realizadas

SELECT version();

Resultado:



PostgreSQL 16.16 (Debian 16.16-1.pgdg13+1)



\\l

Bases verificadas:



contract\_db

postgres

template0

template1



Hito: pgTAP real

Fecha: 18/11/2026



Extensiones instaladas

SELECT extname, extversion

FROM pg\_extension;

Resultado:



Extension	Version

plpgsql	1.0

pgtap	1.3.4

Estado

PostgreSQL 16.16 operativo

pgTAP 1.3.4 operativo

Docker Desktop operativo

WSL2 operativo



Hito: Primera prueba pgTAP real

Fecha: 18/11/2026



Prueba ejecutada:



SELECT plan(1);

SELECT pass('Hello pgTAP');

SELECT \* FROM finish();

Resultado:



1..1

ok 1 - Hello pgTAP

Estado:



PostgreSQL 16.16 ✅

pgTAP 1.3.4 ✅

Primera prueba ejecutada ✅



Estado actual

Infraestructura

Windows 11

WSL2

Ubuntu

Docker Desktop

Docker Compose

Base de datos

PostgreSQL 16.16

pgTAP 1.3.4

pg\_prove 3.37

Artefactos

bootstrap.ps1

parse-tap.ps1

generate-report.ps1

validate-report.ps1

Pruebas reales

V001\_\_pgtap\_smoke\_test.sql

V002\_\_pgprove\_smoke\_test.sql

Estado

PASS



Hito Git

Commit inicial estable:



d54224cc8c0d28d5b9dd6cf9cb350d0425644564

Descripción:



Primer entorno PostgreSQL + pgTAP operativo





Versión del proyecto

Fecha de consolidación

2026-11-20



Estado

v0.1 Operativa



Commit Git

d54224cc8c0d28d5b9dd6cf9cb350d0425644564

Hitos alcanzados

PostgreSQL 16.16 operativo

pgTAP 1.3.4 operativo

pg\_prove 3.37 operativo

Docker Desktop operativo

Docker Compose operativo

WSL2 operativo

Pipeline de pruebas funcionando

Generación de informes JSON funcionando

Validación de informes funcionando

Repositorio Git inicializado

Backups

sql-contract-testbed-backup.zip

sql-contract-testbed-postgres-real.zip

sql-contract-testbed-before-pgtap.zip

sql-contract-testbed-pgtap-working.zip

sql-contract-testbed-v0.1-operativo.zip







Versión: v0.1 Operativa



Commit actual:

1161252



Commit base:

d54224c



Fecha:

20/11/2026





Estado de la suite

Estado: PASS

Tests: 29

Fallos: 0

Base de datos: PostgreSQL 16.16

pgTAP: 1.3.4





sql-contract-testbed

Versión estable actual:



v1.0-pgtap-ci



Características

PostgreSQL 16

pgTAP

GitHub Actions

bootstrap.sql

all-tests.sql

29 pruebas automatizadas

Estado

PASS ✅


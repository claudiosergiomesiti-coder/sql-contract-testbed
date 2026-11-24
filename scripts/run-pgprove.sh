#!/bin/bash
 
pg_prove \
  -U postgres \
  -d contract_db \
  sql/V004__customers_tests.sql
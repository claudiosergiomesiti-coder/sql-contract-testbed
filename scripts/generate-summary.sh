#!/bin/bash

echo "===== PGPROVE LOG ====="
cat artifacts/pgprove-output.log
echo "======================="
 
FILES=$(grep -o "Files=[0-9]*" artifacts/pgprove-output.log | cut -d= -f2)
TESTS=$(grep -o "Tests=[0-9]*" artifacts/pgprove-output.log | cut -d= -f2)
 
if grep -q "Result: PASS" artifacts/pgprove-output.log
then
  STATUS="PASS"
else
  STATUS="FAIL"
fi
 
cat > artifacts/test-summary.json << EOF
{
  "project": "sql-contract-testbed",
  "database": "contract_db",
  "suite": "V004-V023",
  "files": $FILES,
  "tests": $TESTS,
  "status": "$STATUS",
  "generated_at": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
}
EOF
 
cat artifacts/test-summary.json
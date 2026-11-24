#!/bin/bash

PASSED=$(grep -c "^ ok " artifacts/test-output.log || true)
FAILED=$(grep -c "^ not ok " artifacts/test-output.log || true)

if [ "$FAILED" -eq 0 ]; then
  STATUS="PASS"
else
  STATUS="FAIL"
fi

cat > artifacts/test-summary.json << EOF
{
  "project": "sql-contract-testbed",
  "database": "contract_db",
  "suite": "V004-V023",
  "passed": $PASSED,
  "failed": $FAILED,
  "status": "$STATUS",
  "generated_at": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
}
EOF

cat artifacts/test-summary.json
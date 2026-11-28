CREATE OR REPLACE FUNCTION calculate_audit_readiness(
    validated_items integer,
    total_items integer
)
RETURNS numeric
LANGUAGE SQL
AS
$$
SELECT CASE
    WHEN total_items = 0 THEN 0
    ELSE ROUND(
        (validated_items::numeric / total_items::numeric) * 100,
        2
    )
END;
$$;
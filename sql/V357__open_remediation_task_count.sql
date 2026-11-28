CREATE OR REPLACE FUNCTION open_remediation_task_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM remediation_tasks
WHERE task_status = 'OPEN';
$$;
CREATE OR REPLACE FUNCTION pending_review_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM access_review_items
WHERE review_status = 'PENDING';
$$;
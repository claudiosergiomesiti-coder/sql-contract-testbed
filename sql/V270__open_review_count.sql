CREATE OR REPLACE FUNCTION open_review_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM risk_reviews
WHERE review_status = 'OPEN';
$$;
CREATE OR REPLACE FUNCTION pending_evidence_review_count()
RETURNS integer
LANGUAGE SQL
AS
$$
SELECT COUNT(*)::integer
FROM evidence_reviews
WHERE review_status = 'PENDING';
$$;
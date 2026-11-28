CREATE TABLE IF NOT EXISTS public.exception_approvals (
    id integer GENERATED ALWAYS AS IDENTITY,
    request_id integer NOT NULL,
    approver_name text NOT NULL,
    decision text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT exception_approvals_pk PRIMARY KEY (id),
    CONSTRAINT exception_approvals_request_fk
        FOREIGN KEY (request_id)
        REFERENCES exception_requests(id)
);
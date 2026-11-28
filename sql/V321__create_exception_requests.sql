CREATE TABLE IF NOT EXISTS public.exception_requests (
    id integer GENERATED ALWAYS AS IDENTITY,
    request_name text NOT NULL,
    request_status text NOT NULL,
    requester_name text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT exception_requests_pk PRIMARY KEY (id)
);
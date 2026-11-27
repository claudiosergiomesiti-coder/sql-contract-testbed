CREATE TABLE IF NOT EXISTS public.control_tests (
    id integer GENERATED ALWAYS AS IDENTITY,
    control_id integer NOT NULL,
    test_status text NOT NULL,
    test_result text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT control_tests_pk PRIMARY KEY (id),
    CONSTRAINT control_tests_control_fk
        FOREIGN KEY (control_id)
        REFERENCES security_controls(id)
);
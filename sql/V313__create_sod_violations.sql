CREATE TABLE IF NOT EXISTS public.sod_violations (
    id integer GENERATED ALWAYS AS IDENTITY,
    user_id integer NOT NULL,
    rule_id integer NOT NULL,
    violation_status text NOT NULL,
    created_at timestamp NOT NULL DEFAULT now(),
    CONSTRAINT sod_violations_pk PRIMARY KEY (id),
    CONSTRAINT sod_violations_rule_fk
        FOREIGN KEY (rule_id)
        REFERENCES sod_rules(id),
    CONSTRAINT sod_violations_user_fk
        FOREIGN KEY (user_id)
        REFERENCES users(id)
);
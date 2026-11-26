CREATE TABLE IF NOT EXISTS public.role_permissions (
 
    id integer GENERATED ALWAYS AS IDENTITY,
 
    role_id integer NOT NULL,
 
    permission_id integer NOT NULL,
 
    created_at timestamp NOT NULL DEFAULT now(),
 
    CONSTRAINT role_permissions_pk
        PRIMARY KEY (id),
 
    CONSTRAINT role_permissions_role_fk
        FOREIGN KEY (role_id)
        REFERENCES roles(id),
 
    CONSTRAINT role_permissions_permission_fk
        FOREIGN KEY (permission_id)
        REFERENCES permissions(id)
 
);
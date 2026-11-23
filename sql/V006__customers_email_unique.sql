DO
$$
BEGIN
 
    IF NOT EXISTS (
        SELECT 1
        FROM pg_constraint
        WHERE conname = 'customers_email_uq'
    )
    THEN
 
        ALTER TABLE customers
        ADD CONSTRAINT customers_email_uq
        UNIQUE (email);
 
    END IF;
 
END;
$$;
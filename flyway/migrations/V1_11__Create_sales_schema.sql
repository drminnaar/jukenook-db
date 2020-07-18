CREATE SCHEMA sales;

-- configure 'readonly' role access
GRANT USAGE ON SCHEMA sales TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA sales TO readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA sales GRANT SELECT ON TABLES TO readonly;

-- configure 'readwrite' role access
GRANT USAGE, CREATE ON SCHEMA sales TO readwrite;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA sales TO readwrite;
ALTER DEFAULT PRIVILEGES IN SCHEMA sales GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO readwrite;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA sales TO readwrite;
ALTER DEFAULT PRIVILEGES IN SCHEMA sales GRANT USAGE ON SEQUENCES TO readwrite;
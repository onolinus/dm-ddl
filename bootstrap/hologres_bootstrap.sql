-- psql -v schema=<schema> -v domain=<domain> -f hologres_bootstrap.sql
DO $$
DECLARE t text := format('schema_version__%I', :'domain');
BEGIN
  EXECUTE format('CREATE TABLE IF NOT EXISTS %I.'||t||'(id serial PRIMARY KEY, filename text UNIQUE, checksum text, applied_at timestamptz DEFAULT now(), applied_by text)', :'schema');
END $$;

-- Create per-domain version table; CI creates dynamically if missing.
-- Example for 'onboarding':
CREATE TABLE IF NOT EXISTS schema_version__onboarding (
  filename VARCHAR, checksum VARCHAR, applied_at TIMESTAMP, applied_by VARCHAR
);

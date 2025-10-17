-- Create per-domain version table; CI creates dynamically if missing.
-- Example for 'onboarding':
CREATE TABLE IF NOT EXISTS schema_version__onboarding (
  filename STRING, checksum STRING, applied_at DATETIME, applied_by STRING
);

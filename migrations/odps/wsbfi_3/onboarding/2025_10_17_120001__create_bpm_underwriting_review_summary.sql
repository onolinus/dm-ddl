-- Example: ODPS table in project wsbfi_3
CREATE TABLE IF NOT EXISTS bpm_underwriting_review_summary_odps (
  id BIGINT,
  created_at DATETIME,
  updated_at DATETIME,
  is_deleted BOOLEAN
);

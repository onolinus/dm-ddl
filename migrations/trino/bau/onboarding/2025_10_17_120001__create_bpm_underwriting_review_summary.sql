-- Example: Trino prod raw table
CREATE TABLE IF NOT EXISTS hive.raw_data_prod_cloud.bpm_underwriting_review_summary (
  id integer,
  created_at timestamp,
  updated_at timestamp,
  is_deleted boolean
);

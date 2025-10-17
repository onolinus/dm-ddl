-- Example: Hologres prod table
CREATE TABLE bravo_bau.bpm_underwriting_review_summary (
  id int PRIMARY KEY,
  created_at timestamptz,
  updated_at timestamptz,
  is_deleted boolean default false
);

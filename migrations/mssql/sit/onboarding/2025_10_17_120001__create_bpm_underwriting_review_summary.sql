-- Example: MSSQL sit staging table
CREATE TABLE dbo.STG_BravoLOS_bpm_underwriting_review_summary (
  id INT IDENTITY(1,1) PRIMARY KEY,
  created_at DATETIME2,
  updated_at DATETIME2,
  is_deleted BIT DEFAULT 0
);

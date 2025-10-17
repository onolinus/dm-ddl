-- sqlcmd -v DOMAIN=<domain>
DECLARE @tbl SYSNAME = CONCAT('schema_version__', '$(DOMAIN)');
IF NOT EXISTS (SELECT 1 FROM sys.tables WHERE name = @tbl AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    DECLARE @sql NVARCHAR(MAX) = N'
    CREATE TABLE dbo.' + QUOTENAME(@tbl) + N'(
      id INT IDENTITY(1,1) PRIMARY KEY,
      filename NVARCHAR(255) NOT NULL UNIQUE,
      checksum NVARCHAR(64) NULL,
      applied_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
      applied_by NVARCHAR(128) NULL
    )';
    EXEC sp_executesql @sql;
END

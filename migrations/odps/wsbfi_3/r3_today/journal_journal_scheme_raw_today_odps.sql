CREATE TABLE IF NOT EXISTS wsbfi_3_dev.journal_journal_scheme_raw_today_odps
(
    journal_scheme_id  STRING
    ,description       STRING
    ,product_id        INT
    ,finance_type      STRING
    ,is_sharia         BOOLEAN
    ,is_active         BOOLEAN
    ,created_at        DATETIME
    ,updated_at        DATETIME
    ,updated_by        STRING
    ,deleted_at        DATETIME
    ,deleted           BOOLEAN
    ,source_ts_ms      DATETIME
    ,operation_ts_ms   DATETIME
    ,is_deleted        BOOLEAN
    ,op                VARCHAR(5)
    ,inserted_date     DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='journal_journal_scheme');

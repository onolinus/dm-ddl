CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_ref_prepaid_purpose_raw_today_odps
(
    ref_prepaid_purpose_id  BIGINT
    ,prepaid_purpose_code   VARCHAR(50)
    ,prepaid_purpose_name   VARCHAR(100)
    ,ref_payment_alloc_code VARCHAR(50)
    ,is_active              BOOLEAN
    ,usr_crt                VARCHAR(50)
    ,usr_upd                VARCHAR(50)
    ,dtm_crt                DATETIME
    ,dtm_upd                DATETIME
    ,integrity_value        VARCHAR(500)
    ,source_ts_ms           DATETIME
    ,operation_ts_ms        DATETIME
    ,is_deleted             BOOLEAN
    ,op                     VARCHAR(5)
    ,inserted_date          DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_ref_prepaid_purpose');

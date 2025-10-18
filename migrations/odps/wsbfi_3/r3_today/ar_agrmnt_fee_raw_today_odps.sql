CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_agrmnt_fee_raw_today_odps
(
    agrmnt_fee_id     BIGINT
    ,agrmnt_id        BIGINT
    ,mr_fee_type_code VARCHAR(50)
    ,fee_amt          DOUBLE
    ,fee_prcnt        DOUBLE
    ,is_cptlz         BOOLEAN
    ,cptlz_amt        DOUBLE
    ,usr_crt          VARCHAR(50)
    ,usr_upd          VARCHAR(50)
    ,dtm_crt          DATETIME
    ,dtm_upd          DATETIME
    ,integrity_value  VARCHAR(500)
    ,paid_amt         DOUBLE
    ,source_ts_ms     DATETIME
    ,operation_ts_ms  DATETIME
    ,is_deleted       BOOLEAN
    ,op               VARCHAR(5)
    ,inserted_date    DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_agrmnt_fee');

CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_agrmnt_charge_receivable_raw_today_odps
(
    agrmnt_charge_receivable_id       BIGINT
    ,agrmnt_id                        BIGINT
    ,charge_receivable_amt            DOUBLE
    ,charge_receivable_paid_amt       DOUBLE
    ,charge_receivable_waived_amt     DOUBLE
    ,paid_dt                          DATE
    ,description                      VARCHAR(100)
    ,agrmnt_charge_receivable_type_id BIGINT
    ,usr_crt                          VARCHAR(50)
    ,usr_upd                          VARCHAR(50)
    ,dtm_crt                          DATETIME
    ,dtm_upd                          DATETIME
    ,integrity_value                  VARCHAR(500)
    ,source_ts_ms                     DATETIME
    ,operation_ts_ms                  DATETIME
    ,is_deleted                       BOOLEAN
    ,op                               VARCHAR(5)
    ,inserted_date                    DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_agrmnt_charge_receivable');

CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_agrmnt_acc_mnt_x_raw_today_odps
(
    agrmnt_acc_mnt_x_id  BIGINT
    ,agrmnt_acc_mnt_id   BIGINT
    ,opsi_accrued        VARCHAR(2)
    ,accrued_amt         DOUBLE
    ,usr_crt             VARCHAR(50)
    ,dtm_crt             DATETIME
    ,usr_upd             VARCHAR(50)
    ,dtm_upd             DATETIME
    ,integrity_value     VARCHAR(500)
    ,ba_commission       DOUBLE
    ,function_code       VARCHAR(5)
    ,max_refund          DOUBLE
    ,source_ts_ms        DATETIME
    ,operation_ts_ms     DATETIME
    ,is_deleted          BOOLEAN
    ,op                  VARCHAR(5)
    ,inserted_date       DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_agrmnt_acc_mnt_x');

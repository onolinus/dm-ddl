CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_agrmnt_ins_h_raw_today_odps
(
    agrmnt_ins_h_id           BIGINT
    ,total_fee_amt            DOUBLE
    ,agrmnt_id                BIGINT
    ,agrmnt_asset_id          BIGINT
    ,total_main_premi_amt     DOUBLE
    ,total_add_premi_amt      DOUBLE
    ,total_disc_amt           DOUBLE
    ,total_premi_cust_amt     DOUBLE
    ,ins_capitalized_amt      DOUBLE
    ,last_paid_dt             DATETIME
    ,total_premi_paid_amt     DOUBLE
    ,ins_stat_code            VARCHAR(50)
    ,total_diff_amt           DOUBLE
    ,ins_asset_cover_period   VARCHAR(50)
    ,usr_crt                  VARCHAR(50)
    ,usr_upd                  VARCHAR(50)
    ,dtm_crt                  DATETIME
    ,dtm_upd                  DATETIME
    ,integrity_value          VARCHAR(500)
    ,total_premi_to_insco_amt DOUBLE
    ,vendor_code              VARCHAR(50)
    ,source_ts_ms             DATETIME
    ,operation_ts_ms          DATETIME
    ,is_deleted               BOOLEAN
    ,op                       VARCHAR(5)
    ,inserted_date            DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_agrmnt_ins_h');

CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_agrmnt_life_ins_raw_today_odps
(
    agrmnt_ins_h_id                      BIGINT
    ,agrmnt_id                           BIGINT
    ,vendor_code                         VARCHAR(50)
    ,total_premium_amt_b_e_f_fee_to_cust DOUBLE
    ,total_fee_amt_to_cust               DOUBLE
    ,total_premium_amt_to_cust           DOUBLE
    ,total_premium_amt_from_insco        DOUBLE
    ,total_fee_from_insco                DOUBLE
    ,coverage_amt                        DOUBLE
    ,usr_crt                             VARCHAR(50)
    ,usr_upd                             VARCHAR(50)
    ,dtm_crt                             DATETIME
    ,dtm_upd                             DATETIME
    ,integrity_value                     VARCHAR(500)
    ,source_ts_ms                        DATETIME
    ,operation_ts_ms                     DATETIME
    ,is_deleted                          BOOLEAN
    ,op                                  VARCHAR(5)
    ,inserted_date                       DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_agrmnt_life_ins');

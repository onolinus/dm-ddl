CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_inst_schdl_raw_today_odps
(
    inst_schdl_id               BIGINT
    ,agrmnt_id                  BIGINT
    ,inst_seq_no                INT
    ,due_dt                     DATE
    ,inst_amt                   DOUBLE
    ,inst_paid_amt              DOUBLE
    ,inst_waived_amt            DOUBLE
    ,inst_paid_dt               DATE
    ,principal_amt              DOUBLE
    ,interest_amt               DOUBLE
    ,os_principal_amt           DOUBLE
    ,os_interest_amt            DOUBLE
    ,income_recog_amt           DOUBLE
    ,income_recog_dt            DATE
    ,lc_inst_amt                DOUBLE
    ,lc_inst_paid_amt           DOUBLE
    ,lc_inst_waived_amt         DOUBLE
    ,diff_rate_recognize_amt    DOUBLE
    ,lc_inst_adm_fee_amt        DOUBLE
    ,lc_inst_adm_fee_paid_amt   DOUBLE
    ,lc_inst_adm_fee_waived_amt DOUBLE
    ,usr_crt                    VARCHAR(50)
    ,usr_upd                    VARCHAR(50)
    ,dtm_crt                    DATETIME
    ,dtm_upd                    DATETIME
    ,integrity_value            VARCHAR(500)
    ,income_amt                 DOUBLE
    ,source_ts_ms               DATETIME
    ,operation_ts_ms            DATETIME
    ,is_deleted                 BOOLEAN
    ,op                         VARCHAR(5)
    ,inserted_date              DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_inst_schdl');

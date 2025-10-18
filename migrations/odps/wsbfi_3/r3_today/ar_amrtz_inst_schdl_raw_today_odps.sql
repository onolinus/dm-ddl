CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_amrtz_inst_schdl_raw_today_odps
(
    amrtz_inst_schdl_id   BIGINT
    ,inst_schdl_id        BIGINT
    ,inst_seq_no          INT
    ,due_dt               DATETIME
    ,income_net_amt       DOUBLE
    ,os_principle_net_amt DOUBLE
    ,difference_amt       DOUBLE
    ,total_difference_amt DOUBLE
    ,usr_crt              VARCHAR(50)
    ,usr_upd              VARCHAR(50)
    ,dtm_crt              DATETIME
    ,dtm_upd              DATETIME
    ,integrity_value      VARCHAR(500)
    ,source_ts_ms         DATETIME
    ,operation_ts_ms      DATETIME
    ,is_deleted           BOOLEAN
    ,op                   VARCHAR(5)
    ,inserted_date        DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_amrtz_inst_schdl');

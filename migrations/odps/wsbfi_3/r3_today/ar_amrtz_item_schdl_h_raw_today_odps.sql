CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_amrtz_item_schdl_h_raw_today_odps
(
    amrtz_item_schdl_h_id  BIGINT
    ,inst_schdl_id         BIGINT
    ,inst_seq_no           INT
    ,ref_amrtz_item_code   VARCHAR(50)
    ,accrued_plan_amt      DOUBLE
    ,accrued_amt           DOUBLE
    ,os_accrued_plan_amt   DOUBLE
    ,last_accrued_dt       DATETIME
    ,mapping_code          VARCHAR(50)
    ,usr_crt               VARCHAR(50)
    ,usr_upd               VARCHAR(50)
    ,dtm_crt               DATETIME
    ,dtm_upd               DATETIME
    ,integrity_value       VARCHAR(500)
    ,source_ts_ms          DATETIME
    ,operation_ts_ms       DATETIME
    ,is_deleted            BOOLEAN
    ,op                    VARCHAR(5)
    ,inserted_date         DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_amrtz_item_schdl_h');

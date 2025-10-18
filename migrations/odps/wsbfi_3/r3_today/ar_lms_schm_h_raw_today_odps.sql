CREATE TABLE IF NOT EXISTS wsbfi_3_dev.ar_lms_schm_h_raw_today_odps
(
    lms_schm_h_id    BIGINT
    ,lms_schm_code   VARCHAR(50)
    ,lms_schm_name   VARCHAR(100)
    ,lms_schm_descr  VARCHAR(4000)
    ,is_active       BOOLEAN
    ,start_dt        DATETIME
    ,end_dt          DATETIME
    ,usr_crt         VARCHAR(50)
    ,usr_upd         VARCHAR(50)
    ,dtm_crt         DATETIME
    ,dtm_upd         DATETIME
    ,integrity_value VARCHAR(500)
    ,source_ts_ms    DATETIME
    ,operation_ts_ms DATETIME
    ,is_deleted      BOOLEAN
    ,op              VARCHAR(5)
    ,inserted_date   DATETIME
) STORED AS ALIORC TBLPROPERTIES ('columnar.nested.type'='true', 'comment'='ar_lms_schm_h');

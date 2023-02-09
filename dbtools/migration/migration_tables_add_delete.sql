-- OfBiz migration 13.07 to 22.01
-- Creates tables that didn't exist before and
-- deletes tables that don't exist anymore
-- DO NOT USE IN PRODUCTION, POSSIBLE DATA LOSS!!!

BEGIN;
CREATE TABLE IF NOT EXISTS public.telecom_gateway_config
(
    telecom_gateway_config_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_telecom_gateway_config PRIMARY KEY (telecom_gateway_config_id)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.telecom_gateway_config
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS tlm_gtw_cng_txcrts
    ON public.telecom_gateway_config USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS tlm_gtw_cng_txstmp
    ON public.telecom_gateway_config USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE TABLE IF NOT EXISTS public.telecom_method_type
(
    telecom_method_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_telecom_method_type PRIMARY KEY (telecom_method_type_id)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.telecom_method_type
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS tlcm_mtd_tp_txcrts
    ON public.telecom_method_type USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS tlcm_mtd_tp_txstmp
    ON public.telecom_method_type USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.product_store_telecom_setting
(
    product_store_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    telecom_method_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    telecom_msg_type_enum_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    telecom_custom_method_id character varying(20) COLLATE pg_catalog."default",
    telecom_gateway_config_id character varying(20) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_product_store_telecom_setti PRIMARY KEY (product_store_id, telecom_method_type_id, telecom_msg_type_enum_id),
    CONSTRAINT prds_ts_cus_met FOREIGN KEY (telecom_custom_method_id)
        REFERENCES public.custom_method (custom_method_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prds_ts_enum FOREIGN KEY (telecom_msg_type_enum_id)
        REFERENCES public.enumeration (enum_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prds_ts_pgc FOREIGN KEY (telecom_gateway_config_id)
        REFERENCES public.telecom_gateway_config (telecom_gateway_config_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prds_ts_prds FOREIGN KEY (product_store_id)
        REFERENCES public.product_store (product_store_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prds_ts_teltp FOREIGN KEY (telecom_method_type_id)
        REFERENCES public.telecom_method_type (telecom_method_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_store_telecom_setting
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS prds_ts_cus_met
    ON public.product_store_telecom_setting USING btree
    (telecom_custom_method_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prds_ts_enum
    ON public.product_store_telecom_setting USING btree
    (telecom_msg_type_enum_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prds_ts_pgc
    ON public.product_store_telecom_setting USING btree
    (telecom_gateway_config_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prds_ts_prds
    ON public.product_store_telecom_setting USING btree
    (product_store_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prds_ts_teltp
    ON public.product_store_telecom_setting USING btree
    (telecom_method_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prt_str_tlm_stg_tp
    ON public.product_store_telecom_setting USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prt_str_tlm_stg_ts
    ON public.product_store_telecom_setting USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.facility_calendar_type
(
    facility_calendar_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    parent_type_id character varying(20) COLLATE pg_catalog."default",
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_facility_calendar_type PRIMARY KEY (facility_calendar_type_id)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.facility_calendar_type
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS fct_clnr_tp_txcrts
    ON public.facility_calendar_type USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS fct_clnr_tp_txstmp
    ON public.facility_calendar_type USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.salary_step_new
(
    salary_step_seq_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    pay_grade_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    from_date timestamp with time zone NOT NULL,
    thru_date timestamp with time zone,
    date_modified timestamp with time zone,
    amount numeric(18,2),
    created_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_modified_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_salary_step_new PRIMARY KEY (salary_step_seq_id, pay_grade_id, from_date),
    CONSTRAINT slry_stp_pgrd_new FOREIGN KEY (pay_grade_id)
        REFERENCES public.pay_grade (pay_grade_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salary_step_new
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS slr_stp_nw_txcrts
    ON public.salary_step_new USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS slr_stp_nw_txstmp
    ON public.salary_step_new USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS slry_stp_pgrd_new
    ON public.salary_step_new USING btree
    (pay_grade_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.party_pref_doc_type_tpl
(
    party_pref_doc_type_tpl_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    party_id character varying(20) COLLATE pg_catalog."default",
    from_date timestamp with time zone,
    thru_date timestamp with time zone,
    invoice_type_id character varying(20) COLLATE pg_catalog."default",
    order_type_id character varying(20) COLLATE pg_catalog."default",
    quote_type_id character varying(20) COLLATE pg_catalog."default",
    custom_screen_id character varying(20) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_party_pref_doc_type_tpl PRIMARY KEY (party_pref_doc_type_tpl_id),
    CONSTRAINT papdtt_to_invt FOREIGN KEY (invoice_type_id)
        REFERENCES public.invoice_type (invoice_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT papdtt_to_ordt FOREIGN KEY (order_type_id)
        REFERENCES public.order_type (order_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT papdtt_to_pap FOREIGN KEY (party_id)
        REFERENCES public.party_acctg_preference (party_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT papdtt_to_pty FOREIGN KEY (party_id)
        REFERENCES public.party (party_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT papdtt_to_quot FOREIGN KEY (quote_type_id)
        REFERENCES public.quote_type (quote_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.party_pref_doc_type_tpl
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS papdtt_to_invt
    ON public.party_pref_doc_type_tpl USING btree
    (invoice_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS papdtt_to_ordt
    ON public.party_pref_doc_type_tpl USING btree
    (order_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS papdtt_to_pap
    ON public.party_pref_doc_type_tpl USING btree
    (party_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS papdtt_to_pty
    ON public.party_pref_doc_type_tpl USING btree
    (party_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS papdtt_to_quot
    ON public.party_pref_doc_type_tpl USING btree
    (quote_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prt_dc_tp_tpl_tp
    ON public.party_pref_doc_type_tpl USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prt_dc_tp_tpl_ts
    ON public.party_pref_doc_type_tpl USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.communication_event_return
(
    return_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    communication_event_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_communication_event_return PRIMARY KEY (return_id, communication_event_id),
    CONSTRAINT comev_order_return FOREIGN KEY (return_id)
        REFERENCES public.return_header (return_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT comev_return_cmev FOREIGN KEY (communication_event_id)
        REFERENCES public.communication_event (communication_event_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.communication_event_return
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS cmmnn_evt_rtn_txcs
    ON public.communication_event_return USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS cmmnn_evt_rtn_txsp
    ON public.communication_event_return USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS comev_order_return
    ON public.communication_event_return USING btree
    (return_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS comev_return_cmev
    ON public.communication_event_return USING btree
    (communication_event_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.order_denylist_type
(
    order_denylist_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_order_denylist_type PRIMARY KEY (order_denylist_type_id)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.order_denylist_type
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS orr_dnlt_tp_txcrts
    ON public.order_denylist_type USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS orr_dnlt_tp_txstmp
    ON public.order_denylist_type USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.job_manager_lock
(
    instance_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    from_date timestamp with time zone NOT NULL,
    thru_date timestamp with time zone,
    reason_enum_id character varying(20) COLLATE pg_catalog."default",
    comments character varying(255) COLLATE pg_catalog."default",
    created_date timestamp with time zone,
    created_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_modified_date timestamp with time zone,
    last_modified_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_job_manager_lock PRIMARY KEY (instance_id, from_date),
    CONSTRAINT joblk_enum_reas FOREIGN KEY (reason_enum_id)
        REFERENCES public.enumeration (enum_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.job_manager_lock
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS jb_mngr_lck_txcrts
    ON public.job_manager_lock USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS jb_mngr_lck_txstmp
    ON public.job_manager_lock USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS joblk_enum_reas
    ON public.job_manager_lock USING btree
    (reason_enum_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.facility_calendar
(
    facility_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    calendar_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    facility_calendar_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    from_date timestamp with time zone NOT NULL,
    thru_date timestamp with time zone,
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_facility_calendar PRIMARY KEY (facility_id, calendar_id, facility_calendar_type_id, from_date),
    CONSTRAINT facility_cal_fac FOREIGN KEY (facility_id)
        REFERENCES public.facility (facility_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT facility_cal_type FOREIGN KEY (facility_calendar_type_id)
        REFERENCES public.facility_calendar_type (facility_calendar_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.facility_calendar
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS facility_cal_fac
    ON public.facility_calendar USING btree
    (facility_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS facility_cal_type
    ON public.facility_calendar USING btree
    (facility_calendar_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS fclt_clndr_txcrts
    ON public.facility_calendar USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS fclt_clndr_txstmp
    ON public.facility_calendar USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.custom_screen_type
(
    custom_screen_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    parent_type_id character varying(20) COLLATE pg_catalog."default",
    has_table character(1) COLLATE pg_catalog."default",
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_custom_screen_type PRIMARY KEY (custom_screen_type_id)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.custom_screen_type
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS cstm_scn_tp_txcrts
    ON public.custom_screen_type USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS cstm_scn_tp_txstmp
    ON public.custom_screen_type USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.custom_screen
(
    custom_screen_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    custom_screen_type_id character varying(20) COLLATE pg_catalog."default",
    custom_screen_name character varying(255) COLLATE pg_catalog."default",
    custom_screen_location character varying(255) COLLATE pg_catalog."default",
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_custom_screen PRIMARY KEY (custom_screen_id),
    CONSTRAINT cscr_to_type FOREIGN KEY (custom_screen_type_id)
        REFERENCES public.custom_screen_type (custom_screen_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.custom_screen
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS cscr_to_type
    ON public.custom_screen USING btree
    (custom_screen_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS cstm_scrn_txcrts
    ON public.custom_screen USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS cstm_scrn_txstmp
    ON public.custom_screen USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.prod_promo_code_contact_mech
(
    product_promo_code_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    contact_mech_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_prod_promo_code_contact_mec PRIMARY KEY (product_promo_code_id, contact_mech_id),
    CONSTRAINT prod_prcde_cm FOREIGN KEY (contact_mech_id)
        REFERENCES public.contact_mech (contact_mech_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prod_prcde_pcd FOREIGN KEY (product_promo_code_id)
        REFERENCES public.product_promo_code (product_promo_code_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.prod_promo_code_contact_mech
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS prd_cd_cnt_mch_tp
    ON public.prod_promo_code_contact_mech USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prd_cd_cnt_mch_ts
    ON public.prod_promo_code_contact_mech USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prod_prcde_cm
    ON public.prod_promo_code_contact_mech USING btree
    (contact_mech_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prod_prcde_pcd
    ON public.prod_promo_code_contact_mech USING btree
    (product_promo_code_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.allocation_plan_type
(
    plan_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default",
    has_table character(1) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_allocation_plan_type PRIMARY KEY (plan_type_id)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.allocation_plan_type
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS allcn_pln_tp_txcrs
    ON public.allocation_plan_type USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS allcn_pln_tp_txstp
    ON public.allocation_plan_type USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.java_resource
(
    resource_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    resource_value bytea,
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_java_resource PRIMARY KEY (resource_name)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.java_resource
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS jv_rsrc_txcrts
    ON public.java_resource USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS jv_rsrc_txstmp
    ON public.java_resource USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.facility_assoc_type
(
    facility_assoc_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_facility_assoc_type PRIMARY KEY (facility_assoc_type_id)
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.facility_assoc_type
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS fclt_asc_tp_txcrts
    ON public.facility_assoc_type USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS fclt_asc_tp_txstmp
    ON public.facility_assoc_type USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.agreement_status
(
    agreement_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    status_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    status_date timestamp with time zone NOT NULL,
    comments character varying(255) COLLATE pg_catalog."default",
    change_by_user_login_id character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_agreement_status PRIMARY KEY (agreement_id, status_id, status_date),
    CONSTRAINT agrmnt_stts_agrmnt FOREIGN KEY (agreement_id)
        REFERENCES public.agreement (agreement_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT agrmnt_stts_stts FOREIGN KEY (status_id)
        REFERENCES public.status_item (status_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT agrmnt_stts_usrlgn FOREIGN KEY (change_by_user_login_id)
        REFERENCES public.user_login (user_login_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.agreement_status
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS agrmnt_stts_agrmnt
    ON public.agreement_status USING btree
    (agreement_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmnt_stts_stts
    ON public.agreement_status USING btree
    (status_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmnt_stts_txcrts
    ON public.agreement_status USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmnt_stts_txstmp
    ON public.agreement_status USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmnt_stts_usrlgn
    ON public.agreement_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.picklist_status
(
    picklist_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    status_date timestamp with time zone NOT NULL,
    change_by_user_login_id character varying(255) COLLATE pg_catalog."default",
    status_id character varying(20) COLLATE pg_catalog."default",
    status_id_to character varying(20) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_picklist_status PRIMARY KEY (picklist_id, status_date),
    CONSTRAINT pcklst_stst_cul FOREIGN KEY (change_by_user_login_id)
        REFERENCES public.user_login (user_login_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pcklst_stst_fsi FOREIGN KEY (status_id)
        REFERENCES public.status_item (status_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pcklst_stst_pklt FOREIGN KEY (picklist_id)
        REFERENCES public.picklist (picklist_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT pcklst_stst_tsi FOREIGN KEY (status_id_to)
        REFERENCES public.status_item (status_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.picklist_status
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS pcklst_stst_cul
    ON public.picklist_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS pcklst_stst_fsi
    ON public.picklist_status USING btree
    (status_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS pcklst_stst_pklt
    ON public.picklist_status USING btree
    (picklist_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS pcklst_stst_tsi
    ON public.picklist_status USING btree
    (status_id_to COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS pcklst_stts_txcrts
    ON public.picklist_status USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS pcklst_stts_txstmp
    ON public.picklist_status USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.order_denylist
(
    denylist_string character varying(255) COLLATE pg_catalog."default" NOT NULL,
    order_denylist_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_order_denylist PRIMARY KEY (denylist_string, order_denylist_type_id),
    CONSTRAINT order_dny_type FOREIGN KEY (order_denylist_type_id)
        REFERENCES public.order_denylist_type (order_denylist_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.order_denylist
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS order_dny_type
    ON public.order_denylist USING btree
    (order_denylist_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS ordr_dnlst_txcrts
    ON public.order_denylist USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS ordr_dnlst_txstmp
    ON public.order_denylist USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.agreement_content_type
(
    agreement_content_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    parent_type_id character varying(20) COLLATE pg_catalog."default",
    has_table character(1) COLLATE pg_catalog."default",
    description character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_agreement_content_type PRIMARY KEY (agreement_content_type_id),
    CONSTRAINT agct_typ_parent FOREIGN KEY (parent_type_id)
        REFERENCES public.agreement_content_type (agreement_content_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.agreement_content_type
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS agct_typ_parent
    ON public.agreement_content_type USING btree
    (parent_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmt_cnt_tp_txcrs
    ON public.agreement_content_type USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmt_cnt_tp_txstp
    ON public.agreement_content_type USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.agreement_content
(
    agreement_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    agreement_item_seq_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    agreement_content_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    content_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    from_date timestamp with time zone NOT NULL,
    thru_date timestamp with time zone,
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_agreement_content PRIMARY KEY (content_id, agreement_id, agreement_item_seq_id, agreement_content_type_id, from_date),
    CONSTRAINT ag_cnt_cnt FOREIGN KEY (content_id)
        REFERENCES public.content (content_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ag_cnt_prod FOREIGN KEY (agreement_id)
        REFERENCES public.agreement (agreement_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ag_cnt_type FOREIGN KEY (agreement_content_type_id)
        REFERENCES public.agreement_content_type (agreement_content_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.agreement_content
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS ag_cnt_cnt
    ON public.agreement_content USING btree
    (content_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS ag_cnt_prod
    ON public.agreement_content USING btree
    (agreement_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS ag_cnt_type
    ON public.agreement_content USING btree
    (agreement_content_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmnt_cntt_txcrts
    ON public.agreement_content USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS agrmnt_cntt_txstmp
    ON public.agreement_content USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.allocation_plan_header
(
    plan_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    product_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    plan_type_id character varying(20) COLLATE pg_catalog."default",
    plan_name character varying(100) COLLATE pg_catalog."default",
    status_id character varying(20) COLLATE pg_catalog."default",
    created_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_modified_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_allocation_plan_header PRIMARY KEY (plan_id, product_id),
    CONSTRAINT alc_pln_hdr_cbul FOREIGN KEY (created_by_user_login)
        REFERENCES public.user_login (user_login_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_hdr_lmul FOREIGN KEY (last_modified_by_user_login)
        REFERENCES public.user_login (user_login_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_hdr_sts FOREIGN KEY (status_id)
        REFERENCES public.status_item (status_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_hdr_typ FOREIGN KEY (plan_type_id)
        REFERENCES public.allocation_plan_type (plan_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.allocation_plan_header
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS alc_pln_hdr_cbul
    ON public.allocation_plan_header USING btree
    (created_by_user_login COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_hdr_lmul
    ON public.allocation_plan_header USING btree
    (last_modified_by_user_login COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_hdr_sts
    ON public.allocation_plan_header USING btree
    (status_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_hdr_typ
    ON public.allocation_plan_header USING btree
    (plan_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alln_pln_hdr_txcrs
    ON public.allocation_plan_header USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alln_pln_hdr_txstp
    ON public.allocation_plan_header USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.allocation_plan_item
(
    plan_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    plan_item_seq_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    status_id character varying(20) COLLATE pg_catalog."default",
    plan_method_enum_id character varying(20) COLLATE pg_catalog."default",
    order_id character varying(20) COLLATE pg_catalog."default",
    order_item_seq_id character varying(20) COLLATE pg_catalog."default",
    product_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    allocated_quantity numeric(18,6),
    priority_seq_id character varying(20) COLLATE pg_catalog."default",
    created_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_modified_by_user_login character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_allocation_plan_item PRIMARY KEY (plan_id, plan_item_seq_id, product_id),
    CONSTRAINT alc_pln_itm_cbul FOREIGN KEY (created_by_user_login)
        REFERENCES public.user_login (user_login_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_itm_enum FOREIGN KEY (plan_method_enum_id)
        REFERENCES public.enumeration (enum_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_itm_hdr FOREIGN KEY (plan_id, product_id)
        REFERENCES public.allocation_plan_header (plan_id, product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_itm_lmul FOREIGN KEY (last_modified_by_user_login)
        REFERENCES public.user_login (user_login_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_itm_odrhdr FOREIGN KEY (order_id)
        REFERENCES public.order_header (order_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_itm_odritm FOREIGN KEY (order_item_seq_id, order_id)
        REFERENCES public.order_item (order_item_seq_id, order_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT alc_pln_itm_sts FOREIGN KEY (status_id)
        REFERENCES public.status_item (status_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.allocation_plan_item
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS alc_pln_itm_cbul
    ON public.allocation_plan_item USING btree
    (created_by_user_login COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_itm_enum
    ON public.allocation_plan_item USING btree
    (plan_method_enum_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_itm_hdr
    ON public.allocation_plan_item USING btree
    (plan_id COLLATE pg_catalog."default" ASC NULLS LAST, product_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_itm_lmul
    ON public.allocation_plan_item USING btree
    (last_modified_by_user_login COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_itm_odrhdr
    ON public.allocation_plan_item USING btree
    (order_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_itm_odritm
    ON public.allocation_plan_item USING btree
    (order_id COLLATE pg_catalog."default" ASC NULLS LAST, order_item_seq_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alc_pln_itm_sts
    ON public.allocation_plan_item USING btree
    (status_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alln_pln_itm_txcrs
    ON public.allocation_plan_item USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS alln_pln_itm_txstp
    ON public.allocation_plan_item USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.product_facility_assoc
(
    product_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    facility_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    facility_id_to character varying(20) COLLATE pg_catalog."default" NOT NULL,
    facility_assoc_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    from_date timestamp with time zone NOT NULL,
    thru_date timestamp with time zone,
    sequence_num numeric(20,0),
    transit_time numeric(20,0),
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_product_facility_assoc PRIMARY KEY (product_id, facility_id, facility_id_to, facility_assoc_type_id, from_date),
    CONSTRAINT prfacassoc_fac FOREIGN KEY (facility_id)
        REFERENCES public.facility (facility_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prfacassoc_facto FOREIGN KEY (facility_id_to)
        REFERENCES public.facility (facility_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prfacassoc_pro FOREIGN KEY (product_id)
        REFERENCES public.product (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT prfacassoc_type FOREIGN KEY (facility_assoc_type_id)
        REFERENCES public.facility_assoc_type (facility_assoc_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product_facility_assoc
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS prdt_fct_asc_txcrs
    ON public.product_facility_assoc USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prdt_fct_asc_txstp
    ON public.product_facility_assoc USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prfacassoc_fac
    ON public.product_facility_assoc USING btree
    (facility_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prfacassoc_facto
    ON public.product_facility_assoc USING btree
    (facility_id_to COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prfacassoc_pro
    ON public.product_facility_assoc USING btree
    (product_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prfacassoc_type
    ON public.product_facility_assoc USING btree
    (facility_assoc_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.ftp_address
(
    contact_mech_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    hostname character varying(255) COLLATE pg_catalog."default",
    port numeric(20,0),
    username character varying(255) COLLATE pg_catalog."default",
    ftp_password character varying(255) COLLATE pg_catalog."default",
    binary_transfer character(1) COLLATE pg_catalog."default",
    file_path character varying(255) COLLATE pg_catalog."default",
    zip_file character(1) COLLATE pg_catalog."default",
    passive_mode character(1) COLLATE pg_catalog."default",
    default_timeout numeric(20,0),
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_ftp_address PRIMARY KEY (contact_mech_id),
    CONSTRAINT ftp_srv_cmech FOREIGN KEY (contact_mech_id)
        REFERENCES public.contact_mech (contact_mech_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ftp_address
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS ftp_address_txcrts
    ON public.ftp_address USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS ftp_address_txstmp
    ON public.ftp_address USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS ftp_srv_cmech
    ON public.ftp_address USING btree
    (contact_mech_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.check_account
(
    payment_method_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    bank_name character varying(100) COLLATE pg_catalog."default",
    routing_number character varying(60) COLLATE pg_catalog."default",
    account_type character varying(60) COLLATE pg_catalog."default",
    account_number character varying(255) COLLATE pg_catalog."default",
    name_on_account character varying(100) COLLATE pg_catalog."default",
    company_name_on_account character varying(100) COLLATE pg_catalog."default",
    contact_mech_id character varying(20) COLLATE pg_catalog."default",
    branch_code character varying(60) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_check_account PRIMARY KEY (payment_method_id),
    CONSTRAINT cacct_cmech FOREIGN KEY (contact_mech_id)
        REFERENCES public.contact_mech (contact_mech_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT cacct_paddr FOREIGN KEY (contact_mech_id)
        REFERENCES public.postal_address (contact_mech_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT cacct_pmeth FOREIGN KEY (payment_method_id)
        REFERENCES public.payment_method (payment_method_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.check_account
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS cacct_cmech
    ON public.check_account USING btree
    (contact_mech_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS cacct_paddr
    ON public.check_account USING btree
    (contact_mech_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS cacct_pmeth
    ON public.check_account USING btree
    (payment_method_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS chck_accnt_txcrts
    ON public.check_account USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS chck_accnt_txstmp
    ON public.check_account USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.testing_status
(
    testing_status_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    testing_id character varying(20) COLLATE pg_catalog."default",
    status_id character varying(20) COLLATE pg_catalog."default",
    status_date timestamp with time zone,
    change_by_user_login_id character varying(255) COLLATE pg_catalog."default",
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_testing_status PRIMARY KEY (testing_status_id),
    CONSTRAINT test_sta_stsitm FOREIGN KEY (status_id)
        REFERENCES public.status_item (status_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT test_sta_usrlgn FOREIGN KEY (change_by_user_login_id)
        REFERENCES public.user_login (user_login_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.testing_status
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS test_sta_stsitm
    ON public.testing_status USING btree
    (status_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS test_sta_usrlgn
    ON public.testing_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS tstng_stts_txcrts
    ON public.testing_status USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS tstng_stts_txstmp
    ON public.testing_status USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TABLE IF NOT EXISTS public.shipment_time_estimate
(
    shipment_method_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    party_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    role_type_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    geo_id_to character varying(20) COLLATE pg_catalog."default" NOT NULL,
    geo_id_from character varying(20) COLLATE pg_catalog."default" NOT NULL,
    from_date timestamp with time zone NOT NULL,
    thru_date timestamp with time zone,
    lead_time numeric(18,6),
    lead_time_uom_id character varying(20) COLLATE pg_catalog."default",
    sequence_number numeric(20,0),
    last_updated_stamp timestamp with time zone,
    last_updated_tx_stamp timestamp with time zone,
    created_stamp timestamp with time zone,
    created_tx_stamp timestamp with time zone,
    CONSTRAINT pk_shipment_time_estimate PRIMARY KEY (shipment_method_type_id, party_id, role_type_id, geo_id_to, geo_id_from, from_date),
    CONSTRAINT shipt_est_geo_from FOREIGN KEY (geo_id_from)
        REFERENCES public.geo (geo_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT shipt_est_geo_to FOREIGN KEY (geo_id_to)
        REFERENCES public.geo (geo_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT shipt_est_method FOREIGN KEY (party_id, role_type_id, shipment_method_type_id)
        REFERENCES public.carrier_shipment_method (party_id, role_type_id, shipment_method_type_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT shipt_est_uom FOREIGN KEY (lead_time_uom_id)
        REFERENCES public.uom (uom_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.shipment_time_estimate
    OWNER to ofbiz;
CREATE INDEX IF NOT EXISTS shipt_est_geo_from
    ON public.shipment_time_estimate USING btree
    (geo_id_from COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS shipt_est_geo_to
    ON public.shipment_time_estimate USING btree
    (geo_id_to COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS shipt_est_method
    ON public.shipment_time_estimate USING btree
    (shipment_method_type_id COLLATE pg_catalog."default" ASC NULLS LAST, party_id COLLATE pg_catalog."default" ASC NULLS LAST, role_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS shipt_est_uom
    ON public.shipment_time_estimate USING btree
    (lead_time_uom_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS shpmt_tm_est_txcrs
    ON public.shipment_time_estimate USING btree
    (created_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS shpmt_tm_est_txstp
    ON public.shipment_time_estimate USING btree
    (last_updated_tx_stamp ASC NULLS LAST)
    TABLESPACE pg_default;
	
-- Delete empty tables not needed for OfBiz 22.01
DROP TABLE IF EXISTS public.empl_position_type_rate CASCADE;
DROP TABLE IF EXISTS public.ebay_product_store_inventory CASCADE;
DROP TABLE IF EXISTS public.pos_terminal CASCADE;
DROP TABLE IF EXISTS public.value_link_fulfillment CASCADE;
DROP TABLE IF EXISTS public.example_feature_appl CASCADE;
DROP TABLE IF EXISTS public.example_feature_appl_type CASCADE;
DROP TABLE IF EXISTS public.ebay_shipping_method CASCADE;
DROP TABLE IF EXISTS public.google_co_configuration CASCADE;
DROP TABLE IF EXISTS public.security_permission_auto_grant CASCADE;
DROP TABLE IF EXISTS public.google_co_shipping_method CASCADE;
DROP TABLE IF EXISTS public.example_item CASCADE;
DROP TABLE IF EXISTS public.example_type CASCADE;
DROP TABLE IF EXISTS public.oagis_message_info CASCADE;
DROP TABLE IF EXISTS public.product_keyword_result CASCADE;
DROP TABLE IF EXISTS public.ebay_product_listing_attribute CASCADE;
DROP TABLE IF EXISTS public.fixed_asset_maint_meter CASCADE;
DROP TABLE IF EXISTS public.oagis_message_error_info CASCADE;
DROP TABLE IF EXISTS public.example_status CASCADE;
DROP TABLE IF EXISTS public.work_effort_assignment_rate CASCADE;
DROP TABLE IF EXISTS public.e_bay_log_messages_info CASCADE;
DROP TABLE IF EXISTS public.ebay_product_store_pref_cond CASCADE;
DROP TABLE IF EXISTS public.product_keyword CASCADE;
DROP TABLE IF EXISTS public.facility_role CASCADE;
DROP TABLE IF EXISTS public.tenant_key_encrypting_key CASCADE;
DROP TABLE IF EXISTS public.cust_request_role CASCADE;
DROP TABLE IF EXISTS public.ebay_product_listing CASCADE;
DROP TABLE IF EXISTS public.party_tax_info CASCADE;
DROP TABLE IF EXISTS public.pos_terminal_log CASCADE;
DROP TABLE IF EXISTS public.google_base_config CASCADE;
DROP TABLE IF EXISTS public.salary_step CASCADE;
DROP TABLE IF EXISTS public.pos_terminal_state CASCADE;
DROP TABLE IF EXISTS public.work_effort_contact_mech CASCADE;
DROP TABLE IF EXISTS public.ebay_user_best_offer CASCADE;
DROP TABLE IF EXISTS public.order_item_inventory_res CASCADE;
DROP TABLE IF EXISTS public.ebay_config CASCADE;
DROP TABLE IF EXISTS public.order_item_association CASCADE;
DROP TABLE IF EXISTS public.payment_gatewayi_d_e_a_l CASCADE;
DROP TABLE IF EXISTS public.example CASCADE;
DROP TABLE IF EXISTS public.ebay_product_store_pref CASCADE;
DROP TABLE IF EXISTS public.order_shipment_preference CASCADE;
DROP TABLE IF EXISTS public.pos_terminal_intern_tx CASCADE;
DROP TABLE IF EXISTS public.party_rate CASCADE;
DROP TABLE IF EXISTS public.standard_time_period CASCADE;
DROP TABLE IF EXISTS public.agreement_workeffort_appl CASCADE;
DROP TABLE IF EXISTS public.test_blob CASCADE;
DROP TABLE IF EXISTS public.selenium_test_suite_path CASCADE;
DROP TABLE IF EXISTS public.example_feature CASCADE;

ROLLBACK; -- comment out to make actual changes to the database
-- COMMIT; -- uncomment to make actual changes to the database
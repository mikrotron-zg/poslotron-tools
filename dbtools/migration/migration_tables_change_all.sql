-- Changes to existing tables, constraints and indexes
BEGIN; 
ALTER TABLE public.product_geo
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_geo
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_geo
    ALTER COLUMN product_geo_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_geo
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.communication_event_order
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_order
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_temp_res
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_temp_res
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_temp_res
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.inventory_item_temp_res DROP CONSTRAINT IF EXISTS inv_item_tr_vis;
DROP INDEX IF EXISTS public.inv_item_tr_vis;

ALTER TABLE public.audio_data_resource
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.geo_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.geo_type
    ALTER COLUMN geo_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.geo_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN bcc_address TYPE character varying(320) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN body_screen_location TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN cc_address TYPE character varying(320) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN content_type TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN email_type TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN from_address TYPE character varying(320) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN subject TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_email_setting
    ALTER COLUMN xslfo_attach_screen_location TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.quantity_break
    ALTER COLUMN quantity_break_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quantity_break
    ALTER COLUMN quantity_break_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cust_request_work_effort
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_work_effort
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_change
    ALTER COLUMN change_comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_change
    ALTER COLUMN change_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_change
    ALTER COLUMN change_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_change
    ALTER COLUMN item_description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_change
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_change
    ALTER COLUMN order_item_change_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_change
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_change
    ALTER COLUMN reason_enum_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.billing_account_term
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account_term
    ALTER COLUMN billing_account_term_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account_term
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account_term
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_review_result_type
    ALTER COLUMN budget_review_result_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_review_result_type
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_review_result_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_purpose_type
    ALTER COLUMN content_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_purpose_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.acctg_trans_entry_type
    ALTER COLUMN acctg_trans_entry_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

--Contains data
ALTER TABLE public.visual_theme_set
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visual_theme_set
    ALTER COLUMN visual_theme_set_id TYPE character varying(20) COLLATE pg_catalog."default";
	
ALTER TABLE public.work_effort_search_constraint
    ALTER COLUMN constraint_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_search_constraint
    ALTER COLUMN constraint_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_search_constraint
    ALTER COLUMN high_value TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_search_constraint
    ALTER COLUMN info_string TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_search_constraint
    ALTER COLUMN low_value TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_search_constraint
    ALTER COLUMN work_effort_search_result_id TYPE character varying(20) COLLATE pg_catalog."default";
	
ALTER TABLE public.work_effort_inventory_assign
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_inventory_assign
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_inventory_assign
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";	
	
ALTER TABLE public.segment_group_classification
    ALTER COLUMN party_classification_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group_classification
    ALTER COLUMN segment_group_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.application_sandbox
    ALTER COLUMN application_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.application_sandbox
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.application_sandbox
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.application_sandbox
    ALTER COLUMN runtime_data_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.application_sandbox
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.email_template_setting
    ALTER COLUMN email_template_setting_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN email_type TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN body_screen_location TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN xslfo_attach_screen_location TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN from_address TYPE character varying(320) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN cc_address TYPE character varying(320) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN bcc_address TYPE character varying(320) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN subject TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.email_template_setting
    ALTER COLUMN content_type TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.email_template_setting
    ADD CONSTRAINT emailset_enum FOREIGN KEY (email_type)
    REFERENCES public.enumeration (enum_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS emailset_enum
    ON public.email_template_setting USING btree
    (email_type COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.gift_card
    ALTER COLUMN card_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card
    ALTER COLUMN expire_date TYPE character varying(7) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card
    ALTER COLUMN pin_number TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.perf_rating_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.perf_rating_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_rating_type
    ALTER COLUMN perf_rating_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_maint_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint_type
    ALTER COLUMN product_maint_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset
    ALTER COLUMN acquire_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN acquire_order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN calendar_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN class_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN fixed_asset_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN fixed_asset_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN instance_of_product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN located_at_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN located_at_location_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN parent_fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN purchase_cost_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN serial_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.work_effort_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_content_type
    ALTER COLUMN work_effort_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_term_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term_attribute
    ALTER COLUMN invoice_term_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_term_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_price_action
    ALTER COLUMN product_price_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_action
    ALTER COLUMN product_price_action_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_action
    ALTER COLUMN product_price_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_action
    ALTER COLUMN rate_code TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.payment_gateway_resp_msg
    ALTER COLUMN payment_gateway_resp_msg_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_resp_msg
    ALTER COLUMN payment_gateway_response_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_gl_account
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_gl_account
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_gl_account
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.marketing_campaign_note
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_gateway_config_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_config_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_config_type
    ALTER COLUMN shipment_gateway_conf_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.prod_conf_item_content
    ALTER COLUMN conf_item_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_conf_item_content
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_conf_item_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_group_rollup
    ALTER COLUMN parent_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group_rollup
    ALTER COLUMN product_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_role
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_role
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.quote_term_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term_attribute
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term_attribute
    ALTER COLUMN quote_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term_attribute
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.quote_term_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data, deletes posted_balance which is null for all rows
ALTER TABLE IF EXISTS public.gl_account DROP COLUMN IF EXISTS posted_balance;
ALTER TABLE public.gl_account
    ALTER COLUMN account_code TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN account_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN external_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN gl_account_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN gl_resource_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN gl_xbrl_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN parent_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_good_standard
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_good_standard
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_good_standard
    ALTER COLUMN work_effort_good_std_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_good_standard
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_config_config
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_config
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_config
    ALTER COLUMN config_option_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_config
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.party_rate_new
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_rate_new
    ALTER COLUMN rate_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.billing_account_term_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account_term_attr
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account_term_attr
    ALTER COLUMN billing_account_term_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.data_resource
    ALTER COLUMN character_set_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN data_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN data_resource_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN data_resource_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN data_template_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN locale_string TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN mime_type_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN object_info TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN related_detail_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource
    ALTER COLUMN survey_response_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_adjustment_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment_type_attr
    ALTER COLUMN order_adjustment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_adjustment_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.web_site_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_content_type
    ALTER COLUMN web_site_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.pay_grade
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.pay_grade
    ALTER COLUMN pay_grade_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_grade
    ALTER COLUMN pay_grade_name TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.return_item_shipment
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_shipment
    ALTER COLUMN return_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_shipment
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_shipment
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_package_route_seg
    ALTER COLUMN box_number TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_route_seg
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_route_seg
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_route_seg
    ALTER COLUMN shipment_package_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_route_seg
    ALTER COLUMN shipment_route_segment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_route_seg
    ALTER COLUMN tracking_code TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.fin_account_auth
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_auth
    ALTER COLUMN fin_account_auth_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_auth
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.server_hit_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit_type
    ALTER COLUMN hit_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fin_account_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_type_attr
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_type_attr
    ALTER COLUMN fin_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fin_account_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN authentication_trans_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN authentication_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN authorise_trans_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN authorise_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN production_host TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN protocol_version TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN refund_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN release_trans_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN release_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN sage_pay_mode TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN testing_host TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN vendor TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_sage_pay
    ALTER COLUMN void_url TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN invoice_message TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN invoice_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN recurrence_info_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN reference_number TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.acctg_trans
    ALTER COLUMN acctg_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN acctg_trans_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN fin_account_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN gl_fiscal_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN gl_journal_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN group_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN physical_inventory_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN receipt_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN their_acctg_trans_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN voucher_ref TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.acctg_trans DROP CONSTRAINT IF EXISTS accttx_invoice;
ALTER TABLE IF EXISTS public.acctg_trans
    ADD CONSTRAINT accttx_invoice FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.container_type
    ALTER COLUMN container_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.container_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.geo
    ALTER COLUMN abbreviation TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.geo
    ALTER COLUMN geo_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.geo
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.geo
    ALTER COLUMN geo_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.geo
    ALTER COLUMN geo_sec_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.geo
    ALTER COLUMN geo_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.payment_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_attribute
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.payment_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN carrier_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN carrier_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN geo_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN geo_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN price_break_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN price_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN product_feature_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN product_store_ship_meth_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN quantity_break_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN quantity_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN shipment_cost_estimate_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN weight_break_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_cost_estimate
    ALTER COLUMN weight_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_category_appl
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_category_appl
    ALTER COLUMN product_feature_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.facility_group_role
    ALTER COLUMN facility_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.web_site
    ALTER COLUMN cookie_domain TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN http_host TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN http_port TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN https_host TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN https_port TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN secure_content_prefix TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN site_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN standard_content_prefix TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN visual_theme_set_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.web_site
    ADD COLUMN display_maintenance_page character(1) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.web_site
    ADD COLUMN hosted_path_alias character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.web_site
    ADD COLUMN is_default character(1) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.web_site
    ADD COLUMN webapp_path character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.work_effort_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_type
    ALTER COLUMN work_effort_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.email_address_verification
    ALTER COLUMN email_address TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.email_address_verification
    ALTER COLUMN verify_hash TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_content
    ALTER COLUMN invoice_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_content
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_content DROP CONSTRAINT IF EXISTS inv_cnt_prod;
ALTER TABLE IF EXISTS public.invoice_content
    ADD CONSTRAINT inv_cnt_prod FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.product_search_result
    ALTER COLUMN product_search_result_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_search_result
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_search_result
    ALTER COLUMN order_by_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_search_result DROP CONSTRAINT IF EXISTS prod_schres_vst;

DROP INDEX IF EXISTS public.prod_schres_vst;

ALTER TABLE public.term_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.term_type_attr
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.term_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_type_attr
    ALTER COLUMN work_effort_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.work_effort_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.picklist
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.picklist
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.picklist
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.picklist
    ALTER COLUMN picklist_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.picklist
    ADD COLUMN created_date timestamp with time zone;
ALTER TABLE IF EXISTS public.picklist
    ADD COLUMN last_modified_date timestamp with time zone;

ALTER TABLE public.web_site_path_alias
    ALTER COLUMN alias_to TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_path_alias
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_path_alias
    ALTER COLUMN map_key TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_path_alias
    ALTER COLUMN path_alias TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_path_alias
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.web_site_path_alias
    ADD COLUMN from_date timestamp with time zone NOT NULL;
ALTER TABLE IF EXISTS public.web_site_path_alias
    ADD COLUMN thru_date timestamp with time zone;
ALTER TABLE IF EXISTS public.web_site_path_alias DROP CONSTRAINT IF EXISTS pk_web_site_path_alias;
ALTER TABLE IF EXISTS public.web_site_path_alias
    ADD CONSTRAINT pk_web_site_path_alias PRIMARY KEY (web_site_id, path_alias, from_date);

ALTER TABLE public.testing_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing_type
    ALTER COLUMN testing_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.payment_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_content
    ALTER COLUMN payment_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_content
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.term_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.term_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.term_type
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.return_item
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN expected_item_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN return_item_response_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN return_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN return_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN return_reason_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN return_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_keyword_new
    ALTER COLUMN keyword TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_keyword_new
    ALTER COLUMN keyword_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_keyword_new
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_keyword_new
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_type
    ALTER COLUMN content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc_type
    ALTER COLUMN product_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_world_pay
    ALTER COLUMN inst_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_world_pay
    ALTER COLUMN lang_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_world_pay
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_world_pay
    ALTER COLUMN redirect_url TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN group_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN product_store_survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN result_template TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN survey_appl_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_survey_appl
    ALTER COLUMN survey_template TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.party_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.party_type_attr
    ALTER COLUMN party_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.good_identification
    ALTER COLUMN good_identification_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.good_identification
    ALTER COLUMN id_value TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.good_identification
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data, deleted columns contain no data
ALTER TABLE IF EXISTS public.cust_request DROP COLUMN IF EXISTS billed;
ALTER TABLE IF EXISTS public.cust_request DROP COLUMN IF EXISTS cust_estimated_milli_seconds;
ALTER TABLE IF EXISTS public.cust_request DROP COLUMN IF EXISTS cust_sequence_num;
ALTER TABLE IF EXISTS public.cust_request DROP COLUMN IF EXISTS parent_cust_request_id;
ALTER TABLE public.cust_request
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN cust_request_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN cust_request_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN cust_request_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN from_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN fulfill_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN internal_comment TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN maximum_amount_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN reason TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN sales_channel_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.deduction_type
    ALTER COLUMN deduction_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.deduction_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.deduction_type
    ADD COLUMN parent_type_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.deduction_type
    ADD COLUMN has_table character(1) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.deduction_type
    ADD CONSTRAINT deduct_typ_par FOREIGN KEY (parent_type_id)
    REFERENCES public.deduction_type (deduction_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS deduct_typ_par
    ON public.deduction_type USING btree
    (parent_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.quote
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN quote_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN quote_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN sales_channel_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_item
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item
    ALTER COLUMN agreement_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_status
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_status
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.budget_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.budget_status
    ADD CONSTRAINT budget_stts_usrlgn FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS budget_stts_usrlgn
    ON public.budget_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.product_calculated_info
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.quote_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_role
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.quote_role
    ADD COLUMN from_date timestamp with time zone;
ALTER TABLE IF EXISTS public.quote_role
    ADD COLUMN thru_date timestamp with time zone;

-- Contains data
ALTER TABLE public.good_identification_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.good_identification_type
    ALTER COLUMN good_identification_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.good_identification_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.subscription_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_type_attr
    ALTER COLUMN subscription_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.subscription_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.protected_view
    ALTER COLUMN group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.protected_view
    ALTER COLUMN view_name_id TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_code
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_code
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_code
    ALTER COLUMN product_promo_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_code
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_work_effort_applic
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_work_effort_applic
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_work_effort_applic
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_content
    ALTER COLUMN product_promo_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_content
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.facility_contact_mech
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.facility_contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_contact_mech
    ALTER COLUMN extension TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.facility_contact_mech
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.shipment_item_feature
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item_feature
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item_feature
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.user_login_password_history
    ALTER COLUMN current_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_login_password_history
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.sales_forecast_history
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_history
    ALTER COLUMN custom_time_period_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_history
    ALTER COLUMN internal_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_history
    ALTER COLUMN modified_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_history
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_history
    ALTER COLUMN parent_sales_forecast_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_history
    ALTER COLUMN sales_forecast_history_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_history
    ALTER COLUMN sales_forecast_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_revision_impact
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_revision_impact
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_revision_impact
    ALTER COLUMN revision_reason TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_revision_impact
    ALTER COLUMN revision_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_product_appl
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_product_appl
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_product_appl
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_search_constraint
    ALTER COLUMN constraint_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_search_constraint
    ALTER COLUMN constraint_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_search_constraint
    ALTER COLUMN high_value TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_search_constraint
    ALTER COLUMN info_string TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_search_constraint
    ALTER COLUMN low_value TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_search_constraint
    ALTER COLUMN product_search_result_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.uom
    ALTER COLUMN abbreviation TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.uom
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.uom
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom
    ALTER COLUMN uom_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.uom
    ADD COLUMN numeric_code numeric(20, 0);

-- Contains data
ALTER TABLE public.content_purpose_operation
    ALTER COLUMN content_operation_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_purpose_operation
    ALTER COLUMN content_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_purpose_operation
    ALTER COLUMN privilege_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_purpose_operation
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_purpose_operation
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_assoc
    ALTER COLUMN estimate_calc_method TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc
    ALTER COLUMN instruction TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc
    ALTER COLUMN product_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc
    ALTER COLUMN product_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc
    ALTER COLUMN reason TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc
    ALTER COLUMN recurrence_info_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_assoc
    ALTER COLUMN routing_work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.responding_party
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.responding_party
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.responding_party
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.responding_party
    ALTER COLUMN responding_party_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.contact_list_party_status
    ALTER COLUMN contact_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_party_status
    ALTER COLUMN opt_in_verify_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_party_status
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_party_status
    ALTER COLUMN set_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_party_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_operation
    ALTER COLUMN content_operation_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_operation
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.platform_type
    ALTER COLUMN platform_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.platform_type
    ALTER COLUMN platform_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.platform_type
    ALTER COLUMN platform_version TYPE character varying(10) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.quote_item
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN cust_request_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN deliverable_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN quote_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN skill_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_item
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.quote_item
    ADD COLUMN lead_time_days numeric(20, 0);

-- Contains data
ALTER TABLE public.product_price_purpose
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_purpose
    ALTER COLUMN product_price_purpose_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_keyword_ovrd
    ALTER COLUMN keyword TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_keyword_ovrd
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_keyword_ovrd
    ALTER COLUMN target TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_keyword_ovrd
    ALTER COLUMN target_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.requirement_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_type_attr
    ALTER COLUMN requirement_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.requirement_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_item_type_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type_gl_account
    ALTER COLUMN invoice_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.rate_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.rate_type
    ALTER COLUMN rate_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN change_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN corresponding_po_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN deployment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN dont_cancel_set_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN external_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN from_inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN item_description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN order_item_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN order_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN override_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN quote_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN recurring_freq_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN shopping_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN shopping_list_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN subscription_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN supplier_product_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_item
    ALTER COLUMN sync_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_item
    ADD COLUMN reserve_after_date timestamp with time zone;

ALTER TABLE public.user_login_session
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_profile_default
    ALTER COLUMN default_bill_addr TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_profile_default
    ALTER COLUMN default_pay_meth TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_profile_default
    ALTER COLUMN default_ship_addr TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_profile_default
    ALTER COLUMN default_ship_meth TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_profile_default
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_profile_default
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_category
    ALTER COLUMN and_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_category
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_category
    ALTER COLUMN product_promo_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_category
    ALTER COLUMN product_promo_appl_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_category
    ALTER COLUMN product_promo_cond_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_category
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_category
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_fixed_asset_std
    ALTER COLUMN fixed_asset_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_fixed_asset_std
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.empl_position_class_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_class_type
    ALTER COLUMN empl_position_class_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_class_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cust_request_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_content
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.enumeration
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.enumeration
    ALTER COLUMN enum_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.enumeration
    ALTER COLUMN enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.enumeration
    ALTER COLUMN enum_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.enumeration
    ALTER COLUMN sequence_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_order_item
    ALTER COLUMN engagement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_order_item
    ALTER COLUMN engagement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_order_item
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_order_item
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_order_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.image_data_resource
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_revision
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_revision
    ALTER COLUMN revision_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.country_code
    ALTER COLUMN country_abbr TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.country_code
    ALTER COLUMN country_code TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.country_code
    ALTER COLUMN country_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.country_code
    ALTER COLUMN country_number TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.prod_catalog_inv_facility
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog_inv_facility
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.employment_app
    ALTER COLUMN application_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app
    ALTER COLUMN applying_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app
    ALTER COLUMN approver_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app
    ALTER COLUMN empl_position_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app
    ALTER COLUMN employment_app_source_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app
    ALTER COLUMN job_requisition_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app
    ALTER COLUMN referred_by_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_term
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_term
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_term
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_term
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_term
    ALTER COLUMN text_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_term
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_requirement_commitment
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_requirement_commitment
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_requirement_commitment
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cost_component_type
    ALTER COLUMN cost_component_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.agreement_type
    ALTER COLUMN agreement_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_name_history
    ALTER COLUMN first_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_name_history
    ALTER COLUMN group_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_name_history
    ALTER COLUMN last_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_name_history
    ALTER COLUMN middle_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_name_history
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_name_history
    ALTER COLUMN personal_title TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_name_history
    ALTER COLUMN suffix TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.pay_history
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.pay_history
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_history
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_history
    ALTER COLUMN pay_grade_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_history
    ALTER COLUMN period_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_history
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_history
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_history
    ALTER COLUMN salary_step_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.pay_history
    ADD COLUMN empl_from_date timestamp with time zone NOT NULL;
ALTER TABLE IF EXISTS public.pay_history DROP CONSTRAINT IF EXISTS pk_pay_history;
ALTER TABLE IF EXISTS public.pay_history
    ADD CONSTRAINT pk_pay_history PRIMARY KEY (role_type_id_from, role_type_id_to, party_id_from, party_id_to, empl_from_date, from_date);
DROP INDEX IF EXISTS public.pay_hist_emplmnt;
CREATE INDEX IF NOT EXISTS pay_hist_emplmnt
    ON public.pay_history USING btree
    (role_type_id_from COLLATE pg_catalog."default" ASC NULLS LAST, role_type_id_to COLLATE pg_catalog."default" ASC NULLS LAST, party_id_from COLLATE pg_catalog."default" ASC NULLS LAST, party_id_to COLLATE pg_catalog."default" ASC NULLS LAST, empl_from_date ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.visitor
    ALTER COLUMN visitor_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visitor
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visitor
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.visitor DROP CONSTRAINT IF EXISTS visitor_party;
ALTER TABLE IF EXISTS public.visitor DROP CONSTRAINT IF EXISTS visitor_usrlgn;
DROP INDEX IF EXISTS public.visitor_party;
DROP INDEX IF EXISTS public.visitor_usrlgn;

ALTER TABLE public.container_geo_point
    ALTER COLUMN container_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.container_geo_point
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_blacklist_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_blacklist_type
    ALTER COLUMN order_blacklist_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.termination_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.termination_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.termination_type
    ALTER COLUMN termination_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.accommodation_map_type
    ALTER COLUMN accommodation_map_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_map_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.timesheet_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.timesheet_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.timesheet_role
    ALTER COLUMN timesheet_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cust_request_note
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_item_group_order
    ALTER COLUMN group_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_group_order
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_group_order
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.priority_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.priority_type
    ALTER COLUMN priority_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_item_role
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_role
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.user_login_history
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_login_history
    ALTER COLUMN password_used TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_login_history
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_login_history
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.user_login_history
    ADD COLUMN origin_user_login_id character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_assoc
    ALTER COLUMN content_assoc_predicate_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc
    ALTER COLUMN content_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc
    ALTER COLUMN content_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc
    ALTER COLUMN map_key TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.zip_sales_rule_lookup
    ALTER COLUMN city TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_rule_lookup
    ALTER COLUMN county TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_rule_lookup
    ALTER COLUMN id_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_rule_lookup
    ALTER COLUMN ship_cond TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_rule_lookup
    ALTER COLUMN state_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_rule_lookup
    ALTER COLUMN taxable TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_header
    ALTER COLUMN auto_order_shopping_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN created_by TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN currency_uom TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN external_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN first_attempt_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN internal_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN order_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN order_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN origin_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN sales_channel_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN sync_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN terminal_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN transaction_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_header
    ADD COLUMN agreement_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_header
    ADD CONSTRAINT order_hdr_ws FOREIGN KEY (web_site_id)
    REFERENCES public.web_site (web_site_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS order_hdr_ws
    ON public.order_header USING btree
    (web_site_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.agreement_attribute
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.agreement_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.deliverable_type
    ALTER COLUMN deliverable_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.deliverable_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.sales_opportunity_trck_code
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_trck_code
    ALTER COLUMN tracking_code_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.subscription_fulfillment_piece
    ALTER COLUMN subscription_activity_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_fulfillment_piece
    ALTER COLUMN subscription_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.work_effort_good_standard_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_good_standard_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_good_standard_type
    ALTER COLUMN work_effort_good_std_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.payment_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_content_type
    ALTER COLUMN payment_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_assoc_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc_attribute
    ALTER COLUMN work_effort_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc_attribute
    ALTER COLUMN work_effort_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc_attribute
    ALTER COLUMN work_effort_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.work_effort_assoc_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.user_agent_method_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_agent_method_type
    ALTER COLUMN user_agent_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.gl_account_group_member
    ALTER COLUMN gl_account_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_group_member
    ALTER COLUMN gl_account_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_group_member
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sales_opportunity_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_role
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.document
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.document
    ALTER COLUMN document_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.document
    ALTER COLUMN document_location TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.document
    ALTER COLUMN document_text TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.document
    ALTER COLUMN document_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.quote_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.quote_type_attr
    ALTER COLUMN quote_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.quote_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fin_account_trans_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans_type
    ALTER COLUMN fin_account_trans_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_account_class
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_class
    ALTER COLUMN gl_account_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_class
    ALTER COLUMN parent_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.gl_account_class
    ADD COLUMN sequence_num numeric(20, 0);

ALTER TABLE public.product_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_attribute
    ALTER COLUMN attr_type TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_attribute
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.party_classification_group
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_classification_group
    ALTER COLUMN parent_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_classification_group
    ALTER COLUMN party_classification_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_classification_group
    ALTER COLUMN party_classification_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.status_valid_change
    ALTER COLUMN condition_expression TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.status_valid_change
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.status_valid_change
    ALTER COLUMN status_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.status_valid_change
    ALTER COLUMN transition_name TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.work_order_item_fulfillment
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_order_item_fulfillment
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_order_item_fulfillment
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_order_item_fulfillment
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_feature_category
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_category
    ALTER COLUMN parent_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_category
    ALTER COLUMN product_feature_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_payment_method_type
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_payment_method_type
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_payment_method_type
    ALTER COLUMN product_price_purpose_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_store_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_role
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_use
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_use
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_use
    ALTER COLUMN product_promo_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_use
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_use
    ALTER COLUMN promo_sequence_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.data_resource_purpose
    ALTER COLUMN content_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_purpose
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.training_class_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.training_class_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.training_class_type
    ALTER COLUMN training_class_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_note
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.document_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.document_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.document_attribute
    ALTER COLUMN document_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.document_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.period_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.period_type
    ALTER COLUMN period_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.period_type
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.user_agent
    ALTER COLUMN browser_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_agent
    ALTER COLUMN platform_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_agent
    ALTER COLUMN protocol_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_agent
    ALTER COLUMN user_agent_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_agent
    ALTER COLUMN user_agent_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_agent
    ALTER COLUMN user_agent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.contact_mech_type
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_party_applic
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_party_applic
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_party_applic
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.testing
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing
    ALTER COLUMN testing_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.testing
    ALTER COLUMN testing_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.testing
    ALTER COLUMN testing_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- COntains data
ALTER TABLE public.custom_time_period
    ALTER COLUMN custom_time_period_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.custom_time_period
    ALTER COLUMN from_date TYPE timestamp with time zone ;
ALTER TABLE public.custom_time_period
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.custom_time_period
    ALTER COLUMN parent_period_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.custom_time_period
    ALTER COLUMN period_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.custom_time_period
    ALTER COLUMN period_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.custom_time_period
    ALTER COLUMN thru_date TYPE timestamp with time zone ;

ALTER TABLE public.budget_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.budget_type_attr
    ALTER COLUMN budget_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.budget_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Cotains data
ALTER TABLE public.shipment_item_billing
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item_billing
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item_billing
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item_billing
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.shipment_item_billing DROP CONSTRAINT IF EXISTS shpmnt_itbl_inim;
ALTER TABLE IF EXISTS public.shipment_item_billing
    ADD CONSTRAINT shpmnt_itbl_inim FOREIGN KEY (invoice_id, invoice_item_seq_id)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

-- Contains data
ALTER TABLE public.shipment_package_content
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_content
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_content
    ALTER COLUMN shipment_package_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package_content
    ALTER COLUMN sub_product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.country_capital
    ALTER COLUMN country_capital TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.country_capital
    ALTER COLUMN country_code TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.job_requisition
    ALTER COLUMN exam_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_requisition
    ALTER COLUMN job_location TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_requisition
    ALTER COLUMN job_posting_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_requisition
    ALTER COLUMN job_requisition_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_requisition
    ALTER COLUMN qualification TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.job_requisition
    ALTER COLUMN skill_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.testing_remove_all
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing_remove_all
    ALTER COLUMN testing_remove_all_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_category_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_type
    ALTER COLUMN product_category_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.credit_card
    ALTER COLUMN card_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN card_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN company_name_on_card TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN expire_date TYPE character varying(7) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN first_name_on_card TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN issue_number TYPE character varying(7) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN last_name_on_card TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN middle_name_on_card TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN suffix_on_card TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN title_on_card TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card
    ALTER COLUMN valid_from_date TYPE character varying(7) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_group_member
    ALTER COLUMN product_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group_member
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.acctg_trans_type
    ALTER COLUMN acctg_trans_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.sequence_value_item
    ALTER COLUMN seq_name TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.affiliate
    ALTER COLUMN affiliate_description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.affiliate
    ALTER COLUMN affiliate_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.affiliate
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.affiliate
    ALTER COLUMN site_page_views TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.affiliate
    ALTER COLUMN site_type TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.affiliate
    ALTER COLUMN site_visitors TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.affiliate
    ALTER COLUMN year_established TYPE character varying(10) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.settlement_term
    ALTER COLUMN settlement_term_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.settlement_term
    ALTER COLUMN term_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.settlement_term
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sales_opportunity_work_effort
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_work_effort
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_category_member
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_member
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_member
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.survey_response
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.survey_response
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response
    ALTER COLUMN reference_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response
    ALTER COLUMN survey_response_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_config_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_config_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_config_type
    ALTER COLUMN payment_gateway_config_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.gl_budget_xref
    ALTER COLUMN budget_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_budget_xref
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.supplier_product_feature
    ALTER COLUMN description TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product_feature
    ALTER COLUMN id_code TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product_feature
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product_feature
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product_feature
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_average_cost
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_average_cost
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_average_cost
    ALTER COLUMN product_average_cost_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_average_cost
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.user_preference
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_preference
    ALTER COLUMN user_pref_type_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.user_preference
    ALTER COLUMN user_pref_group_type_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.user_preference
    ALTER COLUMN user_pref_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_preference
    ALTER COLUMN user_pref_data_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.user_preference
    ADD CONSTRAINT up_user_group_type FOREIGN KEY (user_pref_group_type_id)
    REFERENCES public.user_pref_group_type (user_pref_group_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS up_user_group_type
    ON public.user_preference USING btree
    (user_pref_group_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.party_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_content
    ALTER COLUMN party_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_content
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.perf_review_item_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item_type
    ALTER COLUMN perf_review_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.web_site_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_content
    ALTER COLUMN web_site_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_content
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_ship_grp_inv_res
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_grp_inv_res
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_grp_inv_res
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_grp_inv_res
    ALTER COLUMN reserve_order_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_grp_inv_res
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_category_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_gl_account
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_gl_account
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sales_opportunity
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity
    ALTER COLUMN opportunity_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity
    ALTER COLUMN opportunity_stage_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity
    ALTER COLUMN type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.sales_opportunity
    ADD CONSTRAINT slsopp_dtsrc FOREIGN KEY (data_source_id)
    REFERENCES public.data_source (data_source_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS slsopp_dtsrc
    ON public.sales_opportunity USING btree
    (data_source_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.product_promo_code_email
    ALTER COLUMN email_address TYPE character varying(320) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_code_email
    ALTER COLUMN product_promo_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_promo_code_email DROP CONSTRAINT IF EXISTS prod_prcde_pcd;
ALTER TABLE IF EXISTS public.product_promo_code_email
    ADD CONSTRAINT prod_prcde_opcd FOREIGN KEY (product_promo_code_id)
    REFERENCES public.product_promo_code (product_promo_code_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS prod_prcde_opcd
    ON public.product_promo_code_email USING btree
    (product_promo_code_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
DROP INDEX IF EXISTS public.prod_prcde_pcd;

-- Contains data
ALTER TABLE public.portal_page_portlet
    ALTER COLUMN column_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page_portlet
    ALTER COLUMN portal_page_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page_portlet
    ALTER COLUMN portal_portlet_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page_portlet
    ALTER COLUMN portlet_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.content_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.content_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_attribute
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.content_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE IF EXISTS public.work_effort DROP COLUMN IF EXISTS sequence_num;
ALTER TABLE public.work_effort
    ALTER COLUMN accommodation_map_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN accommodation_spot_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN current_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN estimate_calc_method TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN info_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN location_desc TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN money_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN recurrence_info_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN runtime_data_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN scope_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN service_loader_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN show_as_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN source_reference_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN special_terms TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN temp_expr_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN universal_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN work_effort_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN work_effort_parent_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN work_effort_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort
    ALTER COLUMN work_effort_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_label_appl
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_label_appl
    ALTER COLUMN inventory_item_label_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_label_appl
    ALTER COLUMN inventory_item_label_type_id TYPE character varying(20) COLLATE pg_catalog."default";
	
-- Contains data
ALTER TABLE public.product_feature_iactn_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_iactn_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_iactn_type
    ALTER COLUMN product_feature_iactn_type_id TYPE character varying(20) COLLATE pg_catalog."default";
	
ALTER TABLE public.agreement_term_attribute
    ALTER COLUMN agreement_term_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.agreement_term_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_content_type
    ALTER COLUMN invoice_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.quote_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_type
    ALTER COLUMN quote_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.recurrence_info
    ALTER COLUMN exception_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.recurrence_info
    ALTER COLUMN recurrence_info_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.recurrence_info
    ALTER COLUMN recurrence_rule_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.custom_method_type
    ALTER COLUMN custom_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.custom_method_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.custom_method_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.survey_appl_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_appl_type
    ALTER COLUMN survey_appl_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_ical_data
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE IF EXISTS public.order_adjustment DROP COLUMN IF EXISTS amount_per_quantity;
ALTER TABLE IF EXISTS public.order_adjustment DROP COLUMN IF EXISTS percentage;
ALTER TABLE public.order_adjustment
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN corresponding_product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN customer_reference_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN order_adjustment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN order_adjustment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN original_adjustment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN override_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN primary_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN product_promo_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN secondary_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN source_reference_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment
    ALTER COLUMN tax_authority_rate_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_adjustment
    ADD COLUMN is_manual character(1) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.inventory_item_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_type
    ALTER COLUMN inventory_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_group_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group_type
    ALTER COLUMN product_store_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.accommodation_spot
    ALTER COLUMN accommodation_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_spot
    ALTER COLUMN accommodation_spot_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_spot
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_spot
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_ident
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_ident
    ALTER COLUMN fixed_asset_ident_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_ident
    ALTER COLUMN id_value TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_promo_appl
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_promo_appl
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_notification
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_notification
    ALTER COLUMN email_type TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_notification
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_notification
    ALTER COLUMN order_notification_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE IF EXISTS public.visit DROP COLUMN IF EXISTS created_stamp;
ALTER TABLE IF EXISTS public.visit DROP COLUMN IF EXISTS created_tx_stamp;
ALTER TABLE IF EXISTS public.visit DROP COLUMN IF EXISTS last_updated_stamp;
ALTER TABLE IF EXISTS public.visit DROP COLUMN IF EXISTS last_updated_tx_stamp;
ALTER TABLE public.visit
    ALTER COLUMN client_host_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN client_ip_address TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN client_ip_country_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN client_ip_isp_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN client_ip_postal_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN client_ip_state_prov_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN client_user TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN cookie TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN initial_locale TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN initial_referrer TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN initial_request TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN initial_user_agent TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN server_host_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN server_ip_address TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN session_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN user_agent_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN visitor_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visit
    ALTER COLUMN webapp_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.visit DROP CONSTRAINT IF EXISTS visit_cip_cntry;
ALTER TABLE IF EXISTS public.visit DROP CONSTRAINT IF EXISTS visit_cip_stprv;
ALTER TABLE IF EXISTS public.visit DROP CONSTRAINT IF EXISTS visit_cont_mech;
ALTER TABLE IF EXISTS public.visit DROP CONSTRAINT IF EXISTS visit_party;
ALTER TABLE IF EXISTS public.visit DROP CONSTRAINT IF EXISTS visit_party_role;
ALTER TABLE IF EXISTS public.visit DROP CONSTRAINT IF EXISTS visit_role_type;
DROP INDEX IF EXISTS public.visit_txcrts;
DROP INDEX IF EXISTS public.visit_cip_stprv;
DROP INDEX IF EXISTS public.visit_party_role;
DROP INDEX IF EXISTS public.visit_role_type;
DROP INDEX IF EXISTS public.visit_cont_mech;
DROP INDEX IF EXISTS public.visit_txstmp;
DROP INDEX IF EXISTS public.visit_party;
DROP INDEX IF EXISTS public.visit_cip_cntry;

-- Contains data
ALTER TABLE public.shipment_gateway_config
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_config
    ALTER COLUMN shipment_gateway_conf_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_config
    ALTER COLUMN shipment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.billing_account
    ALTER COLUMN account_currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account
    ALTER COLUMN external_account_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_role
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cost_component_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_type_attr
    ALTER COLUMN cost_component_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.cost_component_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.facility_group_rollup
    ALTER COLUMN facility_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group_rollup
    ALTER COLUMN parent_facility_group_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN inventory_item_detail_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN item_issuance_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN maint_hist_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN physical_inventory_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN reason_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN receipt_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN return_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_detail
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_category_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_type_attr
    ALTER COLUMN product_category_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_category_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_account_group_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_group_type
    ALTER COLUMN gl_account_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.supplier_pref_order
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_pref_order
    ALTER COLUMN supplier_pref_order_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN carrier_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN carrier_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN gift_message TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN shipping_instructions TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN supplier_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN telecom_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN tracking_number TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group
    ALTER COLUMN vendor_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_item_ship_group
    ADD COLUMN supplier_agreement_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_item_ship_group
    ADD CONSTRAINT order_itsg_sagr FOREIGN KEY (supplier_agreement_id)
    REFERENCES public.agreement (agreement_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS order_itsg_sagr
    ON public.order_item_ship_group USING btree
    (supplier_agreement_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.recurrence_rule
    ALTER COLUMN frequency TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.recurrence_rule
    ALTER COLUMN recurrence_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.recurrence_rule
    ALTER COLUMN week_start TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.survey_question_appl
    ALTER COLUMN external_field_ref TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_appl
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_appl
    ALTER COLUMN survey_multi_resp_col_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_appl
    ALTER COLUMN survey_multi_resp_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_appl
    ALTER COLUMN survey_page_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_appl
    ALTER COLUMN survey_question_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_appl
    ALTER COLUMN with_survey_option_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_appl
    ALTER COLUMN with_survey_question_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cust_request_party
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_party
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_party
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.portlet_category
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portlet_category
    ALTER COLUMN portlet_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_product
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_product
    ALTER COLUMN product_promo_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_product
    ALTER COLUMN product_promo_appl_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_product
    ALTER COLUMN product_promo_cond_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_product
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_product
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.vendor_product
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.vendor_product
    ALTER COLUMN product_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.vendor_product
    ALTER COLUMN vendor_party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.contact_list_type
    ALTER COLUMN contact_list_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
	
ALTER TABLE public.survey_multi_resp_column
    ALTER COLUMN column_title TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.survey_multi_resp_column
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_multi_resp_column
    ALTER COLUMN survey_multi_resp_col_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_multi_resp_column
    ALTER COLUMN survey_multi_resp_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_appl_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_appl_attr
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_appl_attr
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_appl_attr
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_relationship
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN party_relationship_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN permissions_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN position_title TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN priority_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN relationship_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN security_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_cost_calc
    ALTER COLUMN cost_component_calc_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_cost_calc
    ALTER COLUMN cost_component_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_cost_calc
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_header_work_effort
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header_work_effort
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.data_resource_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_attribute
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.data_resource_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_maint
    ALTER COLUMN interval_meter_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint
    ALTER COLUMN interval_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint
    ALTER COLUMN maint_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint
    ALTER COLUMN maint_template_work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint
    ALTER COLUMN product_maint_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_maint
    ALTER COLUMN product_maint_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN authorization_u_r_i TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN connection_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN engine_class TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN host_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN host_name_failover TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN merchant_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN response_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN sdk_version TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN ssl_socket_factory TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_orbital
    ALTER COLUMN username TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_promo_appl
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_promo_appl
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_promo_appl
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_inventory_produced
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_inventory_produced
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.subscription_resource
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_resource
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_resource
    ALTER COLUMN parent_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_resource
    ALTER COLUMN service_name_on_expiry TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_resource
    ALTER COLUMN subscription_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_resource
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item
    ALTER COLUMN shipment_content_description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_item
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.requirement_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_role
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.quote_term
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term
    ALTER COLUMN quote_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term
    ALTER COLUMN text_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_term
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_keyword
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_keyword
    ALTER COLUMN keyword TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.content_revision
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_revision
    ALTER COLUMN committed_by_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_revision
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_revision
    ALTER COLUMN content_revision_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_attribute
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.inventory_item_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.tax_authority_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_assoc_type
    ALTER COLUMN tax_authority_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fin_account_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_type
    ALTER COLUMN fin_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_type
    ALTER COLUMN replenish_enum_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_note
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.meta_data_predicate
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.meta_data_predicate
    ALTER COLUMN meta_data_predicate_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.pay_pal_payment_method
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_pal_payment_method
    ALTER COLUMN correlation_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_pal_payment_method
    ALTER COLUMN express_checkout_token TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.pay_pal_payment_method
    ALTER COLUMN payer_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_pal_payment_method
    ALTER COLUMN payer_status TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.pay_pal_payment_method
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.pay_pal_payment_method
    ALTER COLUMN transaction_id TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_billing
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_billing
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_billing
    ALTER COLUMN item_issuance_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_billing
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_billing
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_billing
    ALTER COLUMN shipment_receipt_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_item_billing DROP CONSTRAINT IF EXISTS order_itblng_iitm;
ALTER TABLE IF EXISTS public.order_item_billing
    ADD CONSTRAINT order_itblng_iitm FOREIGN KEY (invoice_id, invoice_item_seq_id)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.budget_scenario_application
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_scenario_application
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_scenario_application
    ALTER COLUMN budget_scenario_applic_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_scenario_application
    ALTER COLUMN budget_scenario_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.return_header
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN created_by TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN destination_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN from_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN origin_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN return_header_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN supplier_rma_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header
    ALTER COLUMN to_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_item_attribute
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item_attribute
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.agreement_item_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.empl_leave
    ALTER COLUMN approver_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave
    ALTER COLUMN empl_leave_reason_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave
    ALTER COLUMN leave_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave
    ALTER COLUMN leave_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_store_group
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group
    ALTER COLUMN primary_parent_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group
    ALTER COLUMN product_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group
    ALTER COLUMN product_store_group_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group
    ALTER COLUMN product_store_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.portal_page
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page
    ALTER COLUMN help_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page
    ALTER COLUMN original_portal_page_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page
    ALTER COLUMN owner_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page
    ALTER COLUMN parent_portal_page_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page
    ALTER COLUMN portal_page_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page
    ALTER COLUMN portal_page_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page
    ALTER COLUMN security_group_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.item_issuance_role
    ALTER COLUMN item_issuance_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.marketing_campaign_role
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.marketing_campaign_role
    ADD COLUMN from_date timestamp with time zone NOT NULL;
ALTER TABLE IF EXISTS public.marketing_campaign_role
    ADD COLUMN thru_date timestamp with time zone;
ALTER TABLE IF EXISTS public.marketing_campaign_role DROP CONSTRAINT IF EXISTS pk_marketing_campaign_role;
ALTER TABLE IF EXISTS public.marketing_campaign_role
    ADD CONSTRAINT pk_marketing_campaign_role PRIMARY KEY (marketing_campaign_id, party_id, role_type_id, from_date);

ALTER TABLE public.order_term_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_term_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_term_attribute
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_term_attribute
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_term_attribute
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_term_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.supplier_rating_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_rating_type
    ALTER COLUMN supplier_rating_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.tracking_code_order_return
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order_return
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order_return
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order_return
    ALTER COLUMN site_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order_return
    ALTER COLUMN tracking_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order_return
    ALTER COLUMN tracking_code_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.video_data_resource
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_item_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc_type
    ALTER COLUMN invoice_item_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.web_user_preference
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_user_preference
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_user_preference
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_user_preference
    ALTER COLUMN web_preference_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_user_preference
    ALTER COLUMN web_preference_value TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.contact_mech_type_purpose
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_type_purpose
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_registration
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_registration
    ALTER COLUMN gov_agency_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_registration
    ALTER COLUMN license_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_registration
    ALTER COLUMN registration_number TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN product_feature TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN product_id_for TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN product_id_in TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN product_id_in_subst TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN rule_operator TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_manufacturing_rule
    ALTER COLUMN rule_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_item_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_attribute
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_attribute
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_item_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.content_purpose
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_purpose
    ALTER COLUMN content_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_data_source
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_data_source
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_data_source
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_data_source
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_data_source DROP CONSTRAINT IF EXISTS party_datsrc_vst;
DROP INDEX IF EXISTS public.party_datsrc_vst;

-- Contains data
ALTER TABLE public.data_template_type
    ALTER COLUMN data_template_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_template_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_template_type
    ALTER COLUMN extension TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.party_identification_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_identification_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_identification_type
    ALTER COLUMN party_identification_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_action
    ALTER COLUMN order_adjustment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_action
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_action
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_action
    ALTER COLUMN product_promo_action_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_action
    ALTER COLUMN product_promo_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_action
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_action
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_action
    ALTER COLUMN service_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_promo_action
    ADD COLUMN custom_method_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_promo_action
    ADD CONSTRAINT prod_pract_cmet FOREIGN KEY (custom_method_id)
    REFERENCES public.custom_method (custom_method_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS prod_pract_cmet
    ON public.product_promo_action USING btree
    (custom_method_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.contact_list
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN contact_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN contact_list_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN contact_list_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN opt_out_screen TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN owner_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN verify_email_from TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN verify_email_screen TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN verify_email_subject TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list
    ALTER COLUMN verify_email_web_site_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.survey_question_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_type
    ALTER COLUMN survey_question_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sale_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.sale_type
    ALTER COLUMN sale_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_adjustment_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment_attribute
    ALTER COLUMN order_adjustment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_adjustment_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.return_adjustment_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment_type
    ALTER COLUMN return_adjustment_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_item_assoc
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc
    ALTER COLUMN order_item_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc
    ALTER COLUMN to_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc
    ALTER COLUMN to_order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc
    ALTER COLUMN to_ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_content
    ALTER COLUMN order_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_content
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_content
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.quote_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.quote_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_attribute
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.quote_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.order_product_promo_code
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_product_promo_code
    ALTER COLUMN product_promo_code_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_status
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_status
    ALTER COLUMN owner_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_status
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.inventory_item_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.inventory_item_status
    ADD CONSTRAINT inv_item_stts_user FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS inv_item_stts_user
    ON public.inventory_item_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.role_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.role_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.role_type
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.subscription_comm_event
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_comm_event
    ALTER COLUMN subscription_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.acctg_trans_type_attr
    ALTER COLUMN acctg_trans_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.acctg_trans_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_delivery_schedule
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_delivery_schedule
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_delivery_schedule
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_delivery_schedule
    ALTER COLUMN total_cubic_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_delivery_schedule
    ALTER COLUMN total_weight_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_term
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term
    ALTER COLUMN invoice_term_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term
    ALTER COLUMN text_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_term
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_term DROP CONSTRAINT IF EXISTS invce_trm_invce;
ALTER TABLE IF EXISTS public.invoice_term
    ADD CONSTRAINT invce_trm_invce FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

-- Contains data
ALTER TABLE public.visual_theme
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visual_theme
    ALTER COLUMN visual_theme_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visual_theme
    ALTER COLUMN visual_theme_set_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_type_attr
    ALTER COLUMN invoice_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_data_resource
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_data_resource
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_attr
    ALTER COLUMN fixed_asset_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fixed_asset_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.mime_type_html_template
    ALTER COLUMN mime_type_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.mime_type_html_template
    ALTER COLUMN template_location TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.fin_account_type_gl_account
    ALTER COLUMN fin_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_type_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_type_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_skill_standard
    ALTER COLUMN skill_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_skill_standard
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.system_property
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.system_property
    ALTER COLUMN system_property_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.system_property
    ALTER COLUMN system_property_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.system_property
    ALTER COLUMN system_resource_id TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_item_type_map
    ALTER COLUMN invoice_item_map_key TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type_map
    ALTER COLUMN invoice_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type_map
    ALTER COLUMN invoice_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.comm_content_assoc_type
    ALTER COLUMN comm_content_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.comm_content_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.market_interest
    ALTER COLUMN party_classification_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.market_interest
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_item_type_attr
    ALTER COLUMN agreement_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.agreement_item_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.tracking_code
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN override_css TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN override_logo TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN redirect_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN subgroup_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN tracking_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code
    ALTER COLUMN tracking_code_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.empl_leave_reason_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave_reason_type
    ALTER COLUMN empl_leave_reason_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave_reason_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.employment_app_source_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app_source_type
    ALTER COLUMN employment_app_source_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment_app_source_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_adjustment_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment_type
    ALTER COLUMN order_adjustment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment
    ALTER COLUMN addtl_shipping_charge_desc TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN destination_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN destination_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN destination_telecom_number_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN estimated_arrival_work_eff_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN estimated_ship_work_eff_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN handling_instructions TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN origin_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN origin_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN origin_telecom_number_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN picklist_bin_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN primary_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN primary_return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN primary_ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN shipment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_average_cost_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_average_cost_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_average_cost_type
    ALTER COLUMN product_average_cost_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.shopping_list_work_effort
    ALTER COLUMN shopping_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list_work_effort
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_category
    ALTER COLUMN category_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN category_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN detail_screen TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN link_one_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN link_two_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN primary_parent_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category
    ALTER COLUMN product_category_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_type_attr
    ALTER COLUMN order_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.payment_budget_allocation
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_budget_allocation
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_budget_allocation
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_geo_point
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_geo_point
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.mrp_event_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.mrp_event_type
    ALTER COLUMN mrp_event_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.web_preference_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_preference_type
    ALTER COLUMN web_preference_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.tax_authority_assoc
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_assoc
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_assoc
    ALTER COLUMN tax_authority_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_assoc
    ALTER COLUMN to_tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_assoc
    ALTER COLUMN to_tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.tax_authority_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_gl_account
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_gl_account
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
	
ALTER TABLE public.contact_mech_link
    ALTER COLUMN contact_mech_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_link
    ALTER COLUMN contact_mech_id_to TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_term
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term
    ALTER COLUMN agreement_term_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term
    ALTER COLUMN invoice_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term
    ALTER COLUMN term_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_term
    ALTER COLUMN text_value TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech
    ALTER COLUMN info_string TYPE character varying(255) COLLATE pg_catalog."default";

--Contains data
ALTER TABLE public.entity_sync_remove
    ALTER COLUMN entity_sync_remove_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.requirement_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_attribute
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.requirement_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_type
    ALTER COLUMN shipment_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_content
    ALTER COLUMN work_effort_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_content
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.entity_key_store
    ALTER COLUMN key_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_key_store
    ALTER COLUMN key_text TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_price_change
    ALTER COLUMN changed_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_change
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_change
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_change
    ALTER COLUMN product_price_change_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_change
    ALTER COLUMN product_price_purpose_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_change
    ALTER COLUMN product_price_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_change
    ALTER COLUMN product_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party
    ALTER COLUMN external_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party
    ALTER COLUMN party_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party
    ALTER COLUMN preferred_currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_status
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_status
    ADD CONSTRAINT party_stts_usrlgn FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS party_stts_usrlgn
    ON public.party_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.payment_group_member
    ALTER COLUMN payment_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_group_member
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fixed_asset_ident_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_ident_type
    ALTER COLUMN fixed_asset_ident_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.prod_catalog_category
    ALTER COLUMN prod_catalog_category_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog_category
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog_category
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_label
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_label
    ALTER COLUMN inventory_item_label_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_label
    ALTER COLUMN inventory_item_label_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_item_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type_attr
    ALTER COLUMN invoice_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_item_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.subscription_activity
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_activity
    ALTER COLUMN subscription_activity_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_blacklist
    ALTER COLUMN blacklist_string TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_blacklist
    ALTER COLUMN order_blacklist_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_status
    ALTER COLUMN reason TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_status
    ALTER COLUMN set_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_status
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget
    ALTER COLUMN budget_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget
    ALTER COLUMN custom_time_period_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_rule
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_rule
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_rule
    ALTER COLUMN rule_name TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.container
    ALTER COLUMN container_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.container
    ALTER COLUMN container_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.container
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.container
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.segment_group_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group_type
    ALTER COLUMN segment_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content
    ALTER COLUMN character_set_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN content_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN decorator_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN instance_of_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN locale_string TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN mime_type_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN owner_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN privilege_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN service_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content
    ALTER COLUMN template_data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_item_assoc
    ALTER COLUMN invoice_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc
    ALTER COLUMN invoice_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc
    ALTER COLUMN invoice_item_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc
    ALTER COLUMN invoice_item_seq_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc
    ALTER COLUMN invoice_item_seq_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_assoc
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_item_assoc DROP CONSTRAINT IF EXISTS initmasc_fiitm;
ALTER TABLE IF EXISTS public.invoice_item_assoc DROP CONSTRAINT IF EXISTS initmasc_tiitm;
ALTER TABLE IF EXISTS public.invoice_item_assoc
    ADD CONSTRAINT initmasc_fiitm FOREIGN KEY (invoice_item_seq_id_from, invoice_id_from)
    REFERENCES public.invoice_item (invoice_item_seq_id, invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
ALTER TABLE IF EXISTS public.invoice_item_assoc
    ADD CONSTRAINT initmasc_tiitm FOREIGN KEY (invoice_id_to, invoice_item_seq_id_to)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.requirement_budget_allocation
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_budget_allocation
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_budget_allocation
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cost_component_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_attribute
    ALTER COLUMN cost_component_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.cost_component_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.cust_request_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_type_attr
    ALTER COLUMN cust_request_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.cust_request_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_contact_mech_new
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_contact_mech_new
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_contact_mech_new
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE IF EXISTS public.security_permission DROP COLUMN IF EXISTS dynamic_access;
ALTER TABLE public.security_permission
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.security_permission
    ALTER COLUMN permission_id TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.data_category
    ALTER COLUMN category_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.data_category
    ALTER COLUMN data_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_category
    ALTER COLUMN parent_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_item
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item
    ALTER COLUMN budget_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item
    ALTER COLUMN justification TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item
    ALTER COLUMN purpose TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.reorder_guideline
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.reorder_guideline
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.reorder_guideline
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.reorder_guideline
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.reorder_guideline
    ALTER COLUMN reorder_guideline_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.reorder_guideline
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_header_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_header_note
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.data_resource_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_type_attr
    ALTER COLUMN data_resource_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.data_resource_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.picklist_status_history
    ALTER COLUMN change_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_status_history
    ALTER COLUMN picklist_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_status_history
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_status_history
    ALTER COLUMN status_id_to TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cost_component
    ALTER COLUMN cost_component_calc_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN cost_component_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN cost_component_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN cost_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_ics_avs_override
    ALTER COLUMN avs_decline_string TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_ics_avs_override
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_item_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_type_attr
    ALTER COLUMN order_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_item_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.facility_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.facility_type_attr
    ALTER COLUMN facility_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.facility_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_group_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group_role
    ALTER COLUMN product_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_group_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.tech_data_calendar
    ALTER COLUMN calendar_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tech_data_calendar
    ALTER COLUMN calendar_week_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tech_data_calendar
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.party_invitation_group_assoc
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_invitation_group_assoc
    ALTER COLUMN party_invitation_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.empl_position_type_rate_new
    ALTER COLUMN empl_position_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_type_rate_new
    ALTER COLUMN pay_grade_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_type_rate_new
    ALTER COLUMN rate_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_type_rate_new
    ALTER COLUMN salary_step_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_fin_act_setting
    ALTER COLUMN fin_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_fin_act_setting
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_fin_act_setting
    ALTER COLUMN purch_survey_copy_me TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_fin_act_setting
    ALTER COLUMN purch_survey_send_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_fin_act_setting
    ALTER COLUMN purchase_survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_fin_act_setting
    ALTER COLUMN replenish_method_enum_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.user_pref_group_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_pref_group_type
    ALTER COLUMN user_pref_group_type_id TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.shopping_list_item_survey
    ALTER COLUMN shopping_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list_item_survey
    ALTER COLUMN shopping_list_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list_item_survey
    ALTER COLUMN survey_response_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.shipment_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_attribute
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.shipment_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_fiscal_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_fiscal_type
    ALTER COLUMN gl_fiscal_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_price_auto_notice
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_auto_notice
    ALTER COLUMN product_price_notice_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_method_type
    ALTER COLUMN default_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.payment_method_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method_type
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.testing_node_member
    ALTER COLUMN testing_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.testing_node_member
    ALTER COLUMN testing_node_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.testing_node_member
    ADD COLUMN extend_from_date timestamp with time zone;
ALTER TABLE IF EXISTS public.testing_node_member
    ADD COLUMN extend_thru_date timestamp with time zone;

-- Contains data
ALTER TABLE public.order_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_type
    ALTER COLUMN order_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_assoc_predicate
    ALTER COLUMN content_assoc_predicate_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc_predicate
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.content_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.content_type_attr
    ALTER COLUMN content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.content_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.testing_item
    ALTER COLUMN testing_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.testing_item
    ALTER COLUMN testing_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.runtime_data
    ALTER COLUMN runtime_data_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_category_role
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_role
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_qual
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_qual
    ALTER COLUMN party_qual_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_qual
    ALTER COLUMN qualification_desc TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.party_qual
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_qual
    ALTER COLUMN title TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.party_qual
    ALTER COLUMN verif_status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.segment_group_geo
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group_geo
    ALTER COLUMN segment_group_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_requirement_fulfillment
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_requirement_fulfillment
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_requirement_fulfillment
    ALTER COLUMN work_req_fulf_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.communication_event_work_eff
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_work_eff
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_work_eff
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_scenario
    ALTER COLUMN budget_scenario_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_scenario
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.document_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.document_type_attr
    ALTER COLUMN document_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.document_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.order_item_contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_contact_mech
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_contact_mech
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_contact_mech
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fixed_asset_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type
    ALTER COLUMN fixed_asset_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.status_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.status_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.status_type
    ALTER COLUMN status_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.credit_card_type_gl_account
    ALTER COLUMN card_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card_type_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.credit_card_type_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.prod_catalog_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog_role
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_eway
    ALTER COLUMN customer_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_eway
    ALTER COLUMN enable_beagle TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_eway
    ALTER COLUMN enable_cvn TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_eway
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_eway
    ALTER COLUMN refund_pwd TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_eway
    ALTER COLUMN test_mode TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.communication_event_purpose
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_purpose
    ALTER COLUMN communication_event_prp_typ_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_purpose
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_content_type
    ALTER COLUMN product_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_shipment
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_shipment
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_shipment
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_shipment
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_shipment
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_status
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.shipment_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.shipment_status
    ADD CONSTRAINT shpmnt_stts_usrlgn FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS shpmnt_stts_usrlgn
    ON public.shipment_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.fin_account_role
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_account_category_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_category_type
    ALTER COLUMN gl_account_category_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.budget_item_type
    ALTER COLUMN budget_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_account_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_type
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN base_currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN cogs_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN error_gl_journal_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN invoice_id_prefix TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN invoice_seq_cust_meth_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN invoice_sequence_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN order_id_prefix TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN order_seq_cust_meth_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN order_sequence_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN quote_id_prefix TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN quote_seq_cust_meth_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN quote_sequence_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN refund_payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_acctg_preference
    ALTER COLUMN tax_form_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_acctg_preference
    ADD COLUMN enable_accounting character(1) COLLATE pg_catalog."default";

ALTER TABLE public.tax_authority_category
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_category
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_category
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_type_attr
    ALTER COLUMN agreement_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.agreement_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.payment_group
    ALTER COLUMN payment_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_group
    ALTER COLUMN payment_group_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.payment_group
    ALTER COLUMN payment_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_type_attr
    ALTER COLUMN product_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc_type
    ALTER COLUMN order_item_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_assoc_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_method_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_method_type
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cart_abandoned_line
    ALTER COLUMN cart_abandoned_line_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cart_abandoned_line
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cart_abandoned_line
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cart_abandoned_line
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cart_abandoned_line
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.cart_abandoned_line DROP CONSTRAINT IF EXISTS cart_abln_vst;
DROP INDEX IF EXISTS public.cart_abln_vst;

ALTER TABLE public.agreement
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement
    ALTER COLUMN agreement_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.agreement
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.agreement
    ADD COLUMN status_id character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.empl_position_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_type
    ALTER COLUMN empl_position_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_variance
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_variance
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_variance
    ALTER COLUMN physical_inventory_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_variance
    ALTER COLUMN variance_reason_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.shipment_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_type_attr
    ALTER COLUMN shipment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.shipment_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.picklist_role
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_role
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_role
    ALTER COLUMN picklist_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.work_effort_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc_type
    ALTER COLUMN work_effort_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_facility_appl
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_facility_appl
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_facility_appl
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.job_sandbox
    ALTER COLUMN auth_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN job_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN job_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN job_result TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN loader_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN parent_job_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN pool_id TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN previous_job_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN recurrence_info_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN run_as_user TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN run_by_instance_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN runtime_data_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN service_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_sandbox
    ALTER COLUMN temp_expr_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.job_sandbox
    ADD COLUMN priority numeric(20, 0);
ALTER TABLE IF EXISTS public.job_sandbox
    ADD COLUMN recurrence_time_zone character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.electronic_text
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.file_extension
    ALTER COLUMN file_extension_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.file_extension
    ALTER COLUMN mime_type_id TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.contact_list_comm_status
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_comm_status
    ALTER COLUMN contact_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_comm_status
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_comm_status
    ALTER COLUMN message_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_comm_status
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_comm_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.contact_list_comm_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.contact_list_comm_status
    ADD CONSTRAINT cnct_lst_cst_st_ul FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS cnct_lst_cst_st_ul
    ON public.contact_list_comm_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.valid_responsibility
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.valid_responsibility
    ALTER COLUMN empl_position_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.valid_responsibility
    ALTER COLUMN responsibility_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.gl_account_category
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_category
    ALTER COLUMN gl_account_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_category
    ALTER COLUMN gl_account_category_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.variance_reason_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.variance_reason_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.variance_reason_gl_account
    ALTER COLUMN variance_reason_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.communication_event_prp_typ
    ALTER COLUMN communication_event_prp_typ_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_prp_typ
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_prp_typ
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_maint_order
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint_order
    ALTER COLUMN maint_hist_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint_order
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint_order
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_std_cost
    ALTER COLUMN amount_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_std_cost
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_std_cost
    ALTER COLUMN fixed_asset_std_cost_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_contact_mech
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_contact_mech
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_contact_mech DROP CONSTRAINT IF EXISTS invoice_cmech_hdr;
ALTER TABLE IF EXISTS public.invoice_contact_mech
    ADD CONSTRAINT invoice_cmech_hdr FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.content_search_result
    ALTER COLUMN content_search_result_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_search_result
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_search_result
    ALTER COLUMN order_by_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.content_search_result DROP CONSTRAINT IF EXISTS cnt_schres_vst;
DROP INDEX IF EXISTS public.cnt_schres_vst;

ALTER TABLE public.quote_work_effort
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_work_effort
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_group
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_group
    ALTER COLUMN group_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_group
    ALTER COLUMN group_name_local TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_group
    ALTER COLUMN logo_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.party_group
    ALTER COLUMN office_site_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_group
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_group
    ALTER COLUMN ticker_symbol TYPE character varying(10) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.portlet_portlet_category
    ALTER COLUMN portal_portlet_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portlet_portlet_category
    ALTER COLUMN portlet_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_config_option
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option
    ALTER COLUMN config_option_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option
    ALTER COLUMN config_option_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_config_option
    ADD COLUMN from_date timestamp with time zone;
ALTER TABLE IF EXISTS public.product_config_option
    ADD COLUMN thru_date timestamp with time zone;

-- Contains data
ALTER TABLE public.communication_event_type
    ALTER COLUMN communication_event_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_type
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_facility_location
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_facility_location
    ALTER COLUMN location_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_facility_location
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_review
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_review
    ALTER COLUMN product_review_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_review
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_review
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_review
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.data_resource_type
    ALTER COLUMN data_resource_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.quote_adjustment
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN corresponding_product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN customer_reference_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN override_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN primary_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN product_promo_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN quote_adjustment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN quote_adjustment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN quote_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN secondary_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN source_reference_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_adjustment
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_account_type_default
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_type_default
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_type_default
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.postal_address_boundary
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address_boundary
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_label_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_label_type
    ALTER COLUMN inventory_item_label_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_label_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.survey_question_option
    ALTER COLUMN amount_base_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_option
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_option
    ALTER COLUMN duration_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_option
    ALTER COLUMN survey_option_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_option
    ALTER COLUMN survey_question_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.segment_group_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group_role
    ALTER COLUMN segment_group_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.entity_sync
    ALTER COLUMN entity_sync_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_sync
    ALTER COLUMN run_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_sync
    ALTER COLUMN target_delegator_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_sync
    ALTER COLUMN target_service_name TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cust_request_resolution
    ALTER COLUMN cust_request_resolution_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_resolution
    ALTER COLUMN cust_request_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_resolution
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_dep_method
    ALTER COLUMN depreciation_custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_dep_method
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_trans_box
    ALTER COLUMN process_work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_trans_box
    ALTER COLUMN to_activity_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_trans_box
    ALTER COLUMN transition_id TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.billing_account_role
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.billing_account_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.geo_assoc
    ALTER COLUMN geo_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.geo_assoc
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.geo_assoc
    ALTER COLUMN geo_id_to TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_qual_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_qual_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_qual_type
    ALTER COLUMN party_qual_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.contact_list_party
    ALTER COLUMN contact_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_party
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_party
    ALTER COLUMN preferred_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_list_party
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.picklist_bin
    ALTER COLUMN picklist_bin_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_bin
    ALTER COLUMN picklist_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_bin
    ALTER COLUMN primary_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_bin
    ALTER COLUMN primary_ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_attribute
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_attribute DROP CONSTRAINT IF EXISTS invoice_attr;
ALTER TABLE IF EXISTS public.invoice_attribute
    ADD CONSTRAINT invoice_attr FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

-- Contains data
ALTER TABLE public.prod_catalog
    ALTER COLUMN catalog_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog
    ALTER COLUMN content_path_prefix TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog
    ALTER COLUMN header_logo TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog
    ALTER COLUMN style_sheet TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog
    ALTER COLUMN template_path_prefix TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.visual_theme_resource
    ALTER COLUMN resource_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visual_theme_resource
    ALTER COLUMN resource_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.visual_theme_resource
    ALTER COLUMN sequence_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.visual_theme_resource
    ALTER COLUMN visual_theme_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.web_site_publish_point
    ALTER COLUMN about_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN content_dept TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN left_bar_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN line_logo TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN logo TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN medallion_logo TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN right_bar_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN style_sheet_file TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_publish_point
    ALTER COLUMN template_title TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_content
    ALTER COLUMN product_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_content
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_content
    ALTER COLUMN use_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_content
    ALTER COLUMN use_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.facility_location
    ALTER COLUMN aisle_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN area_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN level_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN location_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN location_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN position_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location
    ALTER COLUMN section_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.facility_location
    ADD CONSTRAINT facility_loc_geopt FOREIGN KEY (geo_point_id)
    REFERENCES public.geo_point (geo_point_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS facility_loc_geopt
    ON public.facility_location USING btree
    (geo_point_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.survey_multi_resp
    ALTER COLUMN multi_resp_title TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.survey_multi_resp
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_multi_resp
    ALTER COLUMN survey_multi_resp_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.budget_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_attribute
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.budget_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.party_benefit
    ALTER COLUMN benefit_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_benefit
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_benefit
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_benefit
    ALTER COLUMN period_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_benefit
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_benefit
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.contact_mech_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_attribute
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.contact_mech_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.content_revision_item
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_revision_item
    ALTER COLUMN content_revision_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_revision_item
    ALTER COLUMN item_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_revision_item
    ALTER COLUMN new_data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_revision_item
    ALTER COLUMN old_data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.data_source
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_source
    ALTER COLUMN data_source_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_source
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN interval_meter_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN interval_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN maint_hist_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN product_maint_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN product_maint_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN purchase_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN schedule_work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_maint
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.uom_conversion_dated
    ALTER COLUMN custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_conversion_dated
    ALTER COLUMN purpose_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_conversion_dated
    ALTER COLUMN rounding_mode TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_conversion_dated
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_conversion_dated
    ALTER COLUMN uom_id_to TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.party_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_attribute
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_secure_pay
    ALTER COLUMN merchant_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_secure_pay
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_secure_pay
    ALTER COLUMN pwd TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_secure_pay
    ALTER COLUMN server_u_r_l TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.rejection_reason
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.rejection_reason
    ALTER COLUMN rejection_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.segment_group
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group
    ALTER COLUMN segment_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.segment_group
    ALTER COLUMN segment_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.empl_position_responsibility
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_responsibility
    ALTER COLUMN empl_position_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_responsibility
    ALTER COLUMN responsibility_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_adjustment_billing
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment_billing
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_adjustment_billing
    ALTER COLUMN order_adjustment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_adjustment_billing DROP CONSTRAINT IF EXISTS order_adjblng_iitm;
ALTER TABLE IF EXISTS public.order_adjustment_billing
    ADD CONSTRAINT order_adjblng_iitm FOREIGN KEY (invoice_id, invoice_item_seq_id)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.product_config_option_iactn
    ALTER COLUMN config_iactn_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option_iactn
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option_iactn
    ALTER COLUMN config_item_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option_iactn
    ALTER COLUMN config_option_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option_iactn
    ALTER COLUMN config_option_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_option_iactn
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shopping_list
    ALTER COLUMN carrier_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN carrier_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN currency_uom TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN list_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN parent_shopping_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN product_promo_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN recurrence_info_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN shopping_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN shopping_list_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list
    ALTER COLUMN visitor_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.shopping_list DROP CONSTRAINT IF EXISTS shlist_vstr;
DROP INDEX IF EXISTS public.shlist_vstr;

ALTER TABLE public.survey_question_category
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_category
    ALTER COLUMN parent_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question_category
    ALTER COLUMN survey_question_category_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE IF EXISTS public.cust_request_status RENAME COLUMN status_datetime TO status_date;
ALTER TABLE public.cust_request_status
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_status
    ALTER COLUMN cust_request_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_status
    ALTER COLUMN cust_request_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.cust_request_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.cust_request_status
    ADD CONSTRAINT cust_rqstts_usrlgn FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS cust_rqstts_usrlgn
    ON public.cust_request_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.physical_inventory
    ALTER COLUMN general_comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.physical_inventory
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.physical_inventory
    ALTER COLUMN physical_inventory_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.geo_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.geo_assoc_type
    ALTER COLUMN geo_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_item_type
    ALTER COLUMN default_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type
    ALTER COLUMN invoice_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN cancel_return_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN certs_path TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN enable_transmit TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN host_address TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN log_file_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN partner TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN proxy_address TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN proxy_logon TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN proxy_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN pwd TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN redirect_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN return_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN user_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_payflow_pro
    ALTER COLUMN vendor TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.requirement_status
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.requirement_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.requirement_status
    ADD CONSTRAINT req_stts_usrlgn FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS req_stts_usrlgn
    ON public.requirement_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.gl_resource_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_resource_type
    ALTER COLUMN gl_resource_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.testing_crypto
    ALTER COLUMN encrypted_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing_crypto
    ALTER COLUMN salted_encrypted_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing_crypto
    ALTER COLUMN testing_crypto_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.testing_crypto
    ALTER COLUMN testing_crypto_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.testing_crypto
    ALTER COLUMN unencrypted_value TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.communication_event
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN communication_event_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN contact_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN contact_mech_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN contact_mech_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN content_mime_type_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN message_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN note TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN orig_comm_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN parent_comm_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN reason_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event
    ALTER COLUMN subject TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_status
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_status DROP CONSTRAINT IF EXISTS invce_sts_invce;
ALTER TABLE IF EXISTS public.invoice_status
    ADD CONSTRAINT inv_stts_usrlgn FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
ALTER TABLE IF EXISTS public.invoice_status
    ADD CONSTRAINT invce_sts_invce FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS inv_stts_usrlgn
    ON public.invoice_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.shipment_receipt
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN item_description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN receipt_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN received_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN rejection_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN return_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt
    ALTER COLUMN shipment_package_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.enumeration_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.enumeration_type
    ALTER COLUMN enum_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.enumeration_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.return_contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_contact_mech
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_contact_mech
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.perf_review_item
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item
    ALTER COLUMN employee_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item
    ALTER COLUMN employee_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item
    ALTER COLUMN perf_rating_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item
    ALTER COLUMN perf_review_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item
    ALTER COLUMN perf_review_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review_item
    ALTER COLUMN perf_review_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_cond
    ALTER COLUMN cond_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_cond
    ALTER COLUMN input_param_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_cond
    ALTER COLUMN operator_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_cond
    ALTER COLUMN other_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_cond
    ALTER COLUMN product_promo_cond_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_cond
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_cond
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_promo_cond
    ADD COLUMN custom_method_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_promo_cond
    ADD CONSTRAINT prod_prcond_cmeth FOREIGN KEY (custom_method_id)
    REFERENCES public.custom_method (custom_method_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS prod_prcond_cmeth
    ON public.product_promo_cond USING btree
    (custom_method_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.tracking_code_visit
    ALTER COLUMN source_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_visit
    ALTER COLUMN tracking_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_visit
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.tracking_code_visit DROP CONSTRAINT IF EXISTS tkng_codvst_vst;
DROP INDEX IF EXISTS public.tkng_codvst_vst;

ALTER TABLE public.fin_account_trans_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans_attribute
    ALTER COLUMN fin_account_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fin_account_trans_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.order_summary_entry
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_summary_entry
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.subscription_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_attribute
    ALTER COLUMN subscription_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.subscription_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.geo_point
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.geo_point
    ALTER COLUMN elevation_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.geo_point
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.geo_point
    ALTER COLUMN information TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.geo_point
    ALTER COLUMN latitude TYPE numeric(18, 6) USING latitude::numeric(18,6);
ALTER TABLE IF EXISTS public.geo_point
    ALTER COLUMN latitude SET STORAGE MAIN;
ALTER TABLE public.geo_point
    ALTER COLUMN longitude TYPE numeric(18, 6) USING longitude::numeric(18,6);
ALTER TABLE IF EXISTS public.geo_point
    ALTER COLUMN longitude SET STORAGE MAIN;
ALTER TABLE IF EXISTS public.geo_point
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.geo_point
    ADD COLUMN geo_point_type_enum_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.geo_point
    ADD CONSTRAINT geopoint_type FOREIGN KEY (geo_point_type_enum_id)
    REFERENCES public.enumeration (enum_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS geopoint_type
    ON public.geo_point USING btree
    (geo_point_type_enum_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.return_item_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_type
    ALTER COLUMN return_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_content_type
    ALTER COLUMN order_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_category_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_content
    ALTER COLUMN prod_cat_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_content
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.return_item_billing
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_billing
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_billing
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_billing
    ALTER COLUMN return_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_billing
    ALTER COLUMN shipment_receipt_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.return_item_billing DROP CONSTRAINT IF EXISTS return_itblng_iitm;
ALTER TABLE IF EXISTS public.return_item_billing
    ADD CONSTRAINT return_itblng_iitm FOREIGN KEY (invoice_id, invoice_item_seq_id)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.gl_account_role
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.facility_location_geo_point
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location_geo_point
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_location_geo_point
    ALTER COLUMN location_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.return_item_response
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_response
    ALTER COLUMN fin_account_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_response
    ALTER COLUMN order_payment_preference_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_response
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_response
    ALTER COLUMN replacement_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_response
    ALTER COLUMN return_item_response_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_store_facility
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_facility
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.accommodation_map
    ALTER COLUMN accommodation_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_map
    ALTER COLUMN accommodation_map_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_map
    ALTER COLUMN accommodation_map_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_map
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.other_data_resource
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fin_account_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_attribute
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fin_account_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.sales_opportunity_stage
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_stage
    ALTER COLUMN opportunity_stage_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.survey_page
    ALTER COLUMN page_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.survey_page
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_page
    ALTER COLUMN survey_page_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.content_search_constraint
    ALTER COLUMN constraint_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_search_constraint
    ALTER COLUMN constraint_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_search_constraint
    ALTER COLUMN content_search_result_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_search_constraint
    ALTER COLUMN high_value TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.content_search_constraint
    ALTER COLUMN info_string TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_search_constraint
    ALTER COLUMN low_value TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN alt_reference TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN gateway_avs_result TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN gateway_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN gateway_cv_result TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN gateway_flag TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN gateway_message TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN gateway_score_result TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN order_payment_preference_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN payment_gateway_response_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN payment_service_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN reference_num TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN sub_reference TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_response
    ALTER COLUMN trans_code_enum_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.marketing_campaign_promo
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign_promo
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.marketing_campaign_promo
    ADD COLUMN from_date timestamp with time zone NOT NULL;
ALTER TABLE IF EXISTS public.marketing_campaign_promo
    ADD COLUMN thru_date timestamp with time zone;
ALTER TABLE IF EXISTS public.marketing_campaign_promo DROP CONSTRAINT IF EXISTS pk_marketing_campaign_promo;
ALTER TABLE IF EXISTS public.marketing_campaign_promo
    ADD CONSTRAINT pk_marketing_campaign_promo PRIMARY KEY (marketing_campaign_id, product_promo_id, from_date);

ALTER TABLE public.survey_trigger
    ALTER COLUMN survey_appl_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_trigger
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_search_result
    ALTER COLUMN work_effort_search_result_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_search_result
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_search_result
    ALTER COLUMN order_by_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.work_effort_search_result DROP CONSTRAINT IF EXISTS weff_schres_vst;
DROP INDEX IF EXISTS public.weff_schres_vst;

ALTER TABLE public.gl_reconciliation_entry
    ALTER COLUMN acctg_trans_entry_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation_entry
    ALTER COLUMN acctg_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation_entry
    ALTER COLUMN gl_reconciliation_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.payment_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_type_attr
    ALTER COLUMN payment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.payment_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.empl_position_reporting_struct
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_reporting_struct
    ALTER COLUMN empl_position_id_managed_by TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_reporting_struct
    ALTER COLUMN empl_position_id_reporting_to TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.job_interview_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.job_interview_type
    ALTER COLUMN job_interview_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.gl_journal
    ALTER COLUMN gl_journal_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_journal
    ALTER COLUMN gl_journal_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.gl_journal
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.browser_type
    ALTER COLUMN browser_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.browser_type
    ALTER COLUMN browser_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.browser_type
    ALTER COLUMN browser_version TYPE character varying(10) COLLATE pg_catalog."default";

ALTER TABLE public.entity_sync_history
    ALTER COLUMN entity_sync_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_sync_history
    ALTER COLUMN run_status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.security_group_permission
    ALTER COLUMN group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.security_group_permission
    ALTER COLUMN permission_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.security_group_permission
    ADD COLUMN from_date timestamp with time zone NOT NULL DEFAULT '2014-09-30 10:40:00.00+02'; -- added default value for migration only
ALTER TABLE IF EXISTS public.security_group_permission
    ADD COLUMN thru_date timestamp with time zone;
ALTER TABLE IF EXISTS public.security_group_permission DROP CONSTRAINT IF EXISTS pk_security_group_permission;
ALTER TABLE IF EXISTS public.security_group_permission
    ADD CONSTRAINT pk_security_group_permission PRIMARY KEY (group_id, permission_id, from_date);

ALTER TABLE public.training_request
    ALTER COLUMN training_request_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_role
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_cost_component_calc
    ALTER COLUMN cost_component_calc_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_cost_component_calc
    ALTER COLUMN cost_component_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_cost_component_calc
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.mime_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.mime_type
    ALTER COLUMN mime_type_id TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.gl_account_history
    ALTER COLUMN custom_time_period_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_history
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_history
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_item_group
    ALTER COLUMN group_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_group
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_group
    ALTER COLUMN order_item_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_group
    ALTER COLUMN parent_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_config
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config
    ALTER COLUMN config_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config
    ALTER COLUMN default_config_option_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_config
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_package
    ALTER COLUMN dimension_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package
    ALTER COLUMN shipment_box_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package
    ALTER COLUMN shipment_package_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_package
    ALTER COLUMN weight_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_xbrl_class
    ALTER COLUMN gl_xbrl_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_xbrl_class
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.gl_xbrl_class
    ADD COLUMN parent_gl_xbrl_class_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.gl_xbrl_class
    ADD CONSTRAINT gl_xbrl_clspar FOREIGN KEY (parent_gl_xbrl_class_id)
    REFERENCES public.gl_xbrl_class (gl_xbrl_class_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS gl_xbrl_clspar
    ON public.gl_xbrl_class USING btree
    (parent_gl_xbrl_class_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.product_config_stats
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_stats
    ALTER COLUMN config_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_stats
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_iactn
    ALTER COLUMN product_feature_iactn_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_iactn
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_iactn
    ALTER COLUMN product_feature_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_iactn
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_price
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_price
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_price
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_price
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_price
    ALTER COLUMN product_price_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.shipment_box_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_box_type
    ALTER COLUMN dimension_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_box_type
    ALTER COLUMN shipment_box_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_box_type
    ALTER COLUMN weight_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_feature_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_type
    ALTER COLUMN product_feature_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_meter
    ALTER COLUMN meter_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_meter
    ALTER COLUMN meter_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_meter
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_meter
    ALTER COLUMN product_meter_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.tracking_code_order
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order
    ALTER COLUMN site_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order
    ALTER COLUMN tracking_code_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_order
    ALTER COLUMN tracking_code_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.web_site_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_role
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_item
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN invoice_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN override_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN override_org_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN parent_invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN parent_invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN tax_authority_rate_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_item DROP CONSTRAINT IF EXISTS invce_itm_invce;
ALTER TABLE IF EXISTS public.invoice_item DROP CONSTRAINT IF EXISTS invce_itm_pinvit;
ALTER TABLE IF EXISTS public.invoice_item
    ADD CONSTRAINT invce_itm_invce FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
ALTER TABLE IF EXISTS public.invoice_item
    ADD CONSTRAINT invce_itm_pinvit FOREIGN KEY (parent_invoice_item_seq_id, parent_invoice_id)
    REFERENCES public.invoice_item (invoice_item_seq_id, invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

-- Contains data
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN company_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN config_props TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN exclude_feature_group TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN exclude_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN include_feature_group TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN include_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN product_store_ship_meth_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN service_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN shipment_custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN shipment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_shipment_meth
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_store_shipment_meth
    ADD COLUMN allowance_percent numeric(18, 6);
ALTER TABLE IF EXISTS public.product_store_shipment_meth
    ADD COLUMN minimum_price numeric(18, 2);

ALTER TABLE public.invoice_note
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_note DROP CONSTRAINT IF EXISTS invoice_note_inv;
ALTER TABLE IF EXISTS public.invoice_note
    ADD CONSTRAINT invoice_note_inv FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.party_invitation
    ALTER COLUMN email_address TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_invitation
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_invitation
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_invitation
    ALTER COLUMN party_invitation_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_invitation
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_invitation
    ALTER COLUMN to_name TYPE character varying(100) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.user_login
    ALTER COLUMN current_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN external_auth_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN last_currency_uom TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN last_locale TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN last_time_zone TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN password_hint TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN user_ldap_dn TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_login
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.user_login
    ADD COLUMN disabled_by character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.agreement_item_type
    ALTER COLUMN agreement_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_item_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.subscription_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription_type
    ALTER COLUMN subscription_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.work_req_fulf_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_req_fulf_type
    ALTER COLUMN work_req_fulf_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_application
    ALTER COLUMN billing_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_application
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_application
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_application
    ALTER COLUMN override_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_application
    ALTER COLUMN payment_application_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_application
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_application
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_application
    ALTER COLUMN to_payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.payment_application DROP CONSTRAINT IF EXISTS payment_app_inv;
ALTER TABLE IF EXISTS public.payment_application
    ADD CONSTRAINT payment_app_inv FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN cert_provision_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN city_locality TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN common_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN country TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN organization_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN organizational_unit TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN serial_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.x509_issuer_provision
    ALTER COLUMN state_province TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.zip_sales_tax_lookup
    ALTER COLUMN city TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_tax_lookup
    ALTER COLUMN county TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_tax_lookup
    ALTER COLUMN county_fips TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_tax_lookup
    ALTER COLUMN geo_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_tax_lookup
    ALTER COLUMN state_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.zip_sales_tax_lookup
    ALTER COLUMN zip_code TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.prod_catalog_category_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog_category_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_catalog_category_type
    ALTER COLUMN prod_catalog_category_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN access_license_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN access_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN access_user_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN bill_shipper_account_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN cod_allow_cod TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN cod_funds_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN cod_surcharge_apply_to_package TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN cod_surcharge_currency_uom_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN connect_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN customer_classification TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN default_return_label_memo TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN default_return_label_subject TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN save_cert_info TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN save_cert_path TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN shipment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN shipper_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_ups
    ALTER COLUMN shipper_pickup_type TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.communication_event_product
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_product
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.return_item_type_map
    ALTER COLUMN return_header_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_type_map
    ALTER COLUMN return_item_map_key TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_item_type_map
    ALTER COLUMN return_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.note_data
    ALTER COLUMN more_info_item_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.note_data
    ALTER COLUMN more_info_item_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.note_data
    ALTER COLUMN more_info_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.note_data
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.note_data
    ALTER COLUMN note_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.note_data
    ALTER COLUMN note_party TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_appl
    ALTER COLUMN product_feature_appl_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_appl
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_appl
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.testing_subtype
    ALTER COLUMN subtype_description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing_subtype
    ALTER COLUMN testing_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_need
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN need_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN party_need_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN party_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_need
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_need DROP CONSTRAINT IF EXISTS party_need_vsit;
DROP INDEX IF EXISTS public.party_need_vsit;

ALTER TABLE public.budget_item_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item_type_attr
    ALTER COLUMN budget_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.budget_item_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN client_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN effective_alias TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN group_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN pwd TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN server_u_r_l TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN source_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN user_alias TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_clear_commerce
    ALTER COLUMN username TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo_code_party
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo_code_party
    ALTER COLUMN product_promo_code_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.inventory_item
    ALTER COLUMN activation_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN bin_number TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN container_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN inventory_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN location_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN lot_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN owner_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN serial_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN soft_identifier TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_event_reminder
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_event_reminder
    ALTER COLUMN locale_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_event_reminder
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_event_reminder
    ALTER COLUMN sequence_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_event_reminder
    ALTER COLUMN time_zone_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_event_reminder
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.work_effort_purpose_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_purpose_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_purpose_type
    ALTER COLUMN work_effort_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.vendor
    ALTER COLUMN manifest_company_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.vendor
    ALTER COLUMN manifest_company_title TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.vendor
    ALTER COLUMN manifest_logo_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.vendor
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.rate_amount
    ALTER COLUMN empl_position_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.rate_amount
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.rate_amount
    ALTER COLUMN period_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.rate_amount
    ALTER COLUMN rate_currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.rate_amount
    ALTER COLUMN rate_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.rate_amount
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN access_account_nbr TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN access_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN access_shipping_key TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN access_user_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN connect_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN head_action TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN head_version TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN label_image_format TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN rate_estimate_template TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_dhl
    ALTER COLUMN shipment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.status_item
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.status_item
    ALTER COLUMN sequence_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.status_item
    ALTER COLUMN status_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.status_item
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.status_item
    ALTER COLUMN status_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.unemployment_claim
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.unemployment_claim
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.unemployment_claim
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.unemployment_claim
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.unemployment_claim
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.unemployment_claim
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.unemployment_claim
    ALTER COLUMN unemployment_claim_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.marketing_campaign
    ALTER COLUMN campaign_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign
    ALTER COLUMN converted_leads TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign
    ALTER COLUMN parent_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_method
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.data_resource_role
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_review
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_review
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_review
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fixed_asset_std_cost_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_std_cost_type
    ALTER COLUMN fixed_asset_std_cost_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_std_cost_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data, renames column weight to shipping_weight
ALTER TABLE IF EXISTS public.product DROP COLUMN IF EXISTS manufacturer_party_id;
ALTER TABLE IF EXISTS public.product RENAME COLUMN weight TO shipping_weight;
ALTER TABLE public.product
    ALTER COLUMN amount_uom_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN brand_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN default_shipment_box_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN depth_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN detail_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN detail_screen TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN diameter_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN height_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN internal_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN inventory_message TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN large_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN lot_id_filled_in TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN medium_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN origin_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN original_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN price_detail_text TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN primary_product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN product_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN product_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN quantity_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN rating_type_enum TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN requirement_method_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN small_image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN virtual_variant_method_enum TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN weight_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product
    ALTER COLUMN width_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product
    ADD COLUMN inventory_item_type_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product DROP CONSTRAINT IF EXISTS prod_mfg_party;
ALTER TABLE IF EXISTS public.product
    ADD CONSTRAINT prod_inv_item_type FOREIGN KEY (inventory_item_type_id)
    REFERENCES public.inventory_item_type (inventory_item_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS prod_inv_item_type
    ON public.product USING btree
    (inventory_item_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
DROP INDEX IF EXISTS public.prod_mfg_party;

ALTER TABLE public.web_site_contact_list
    ALTER COLUMN contact_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_site_contact_list
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.quantity_break_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.quantity_break_type
    ALTER COLUMN quantity_break_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.user_login_security_group
    ALTER COLUMN group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.user_login_security_group
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.benefit_type
    ALTER COLUMN benefit_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.benefit_type
    ALTER COLUMN benefit_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.benefit_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.benefit_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.custom_method
    ALTER COLUMN custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.custom_method
    ALTER COLUMN custom_method_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.custom_method
    ALTER COLUMN custom_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.custom_method
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.document_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.document_type
    ALTER COLUMN document_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.document_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.facility_contact_mech_purpose
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_contact_mech_purpose
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_contact_mech_purpose
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.uom_conversion
    ALTER COLUMN custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_conversion
    ALTER COLUMN rounding_mode TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_conversion
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_conversion
    ALTER COLUMN uom_id_to TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.config_option_product_option
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.config_option_product_option
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.config_option_product_option
    ALTER COLUMN config_option_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.config_option_product_option
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.config_option_product_option
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.config_option_product_option
    ALTER COLUMN product_option_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.carrier_shipment_method
    ALTER COLUMN carrier_service_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.carrier_shipment_method
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.carrier_shipment_method
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.carrier_shipment_method
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.quote_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.quote_note
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_gl_account
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_gl_account
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.entity_sync_include
    ALTER COLUMN appl_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_sync_include
    ALTER COLUMN entity_or_package TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_sync_include
    ALTER COLUMN entity_sync_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.tech_data_calendar_exc_day
    ALTER COLUMN calendar_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tech_data_calendar_exc_day
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.performance_note
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.performance_note
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.performance_note
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.standard_language
    ALTER COLUMN lang_charset TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.standard_language
    ALTER COLUMN lang_code2 TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.standard_language
    ALTER COLUMN lang_code3b TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.standard_language
    ALTER COLUMN lang_code3t TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.standard_language
    ALTER COLUMN lang_family TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.standard_language
    ALTER COLUMN lang_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.standard_language
    ALTER COLUMN standard_language_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.temporal_expression_assoc
    ALTER COLUMN expr_assoc_type TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.temporal_expression_assoc
    ALTER COLUMN from_temp_expr_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.temporal_expression_assoc
    ALTER COLUMN to_temp_expr_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.web_analytics_config
    ALTER COLUMN web_analytics_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_analytics_config
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN acctg_trans_entry_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN acctg_trans_entry_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN acctg_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN orig_currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN reconcile_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN settlement_term_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN tax_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN their_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN their_product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_entry
    ALTER COLUMN voucher_ref TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.contact_mech_purpose_type
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_purpose_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.contact_mech_purpose_type
    ADD COLUMN has_table character(1) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.contact_mech_purpose_type
    ADD COLUMN parent_type_id character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sales_forecast
    ALTER COLUMN created_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast
    ALTER COLUMN custom_time_period_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast
    ALTER COLUMN internal_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast
    ALTER COLUMN modified_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast
    ALTER COLUMN parent_sales_forecast_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast
    ALTER COLUMN sales_forecast_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.responsibility_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.responsibility_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.responsibility_type
    ALTER COLUMN responsibility_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.entity_group
    ALTER COLUMN entity_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_group
    ALTER COLUMN entity_group_name TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.party_invitation_role_assoc
    ALTER COLUMN party_invitation_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_invitation_role_assoc
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_fixed_asset_assignment
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_fixed_asset_assignment
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_fixed_asset_assignment
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_fixed_asset_assignment
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_fixed_asset_assignment
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.facility_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.facility_type
    ALTER COLUMN facility_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.address_match_map
    ALTER COLUMN map_key TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.address_match_map
    ALTER COLUMN map_value TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_type
    ALTER COLUMN invoice_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.value_link_key
    ALTER COLUMN created_by_terminal TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.value_link_key
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.value_link_key
    ALTER COLUMN last_modified_by_terminal TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.value_link_key
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.value_link_key
    ALTER COLUMN merchant_id TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN assigned_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN availability_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN delegate_reason_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN expectation_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_party_assignment
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.work_effort_party_assignment
    ADD CONSTRAINT wkeff_pa_prty_role FOREIGN KEY (role_type_id, party_id)
    REFERENCES public.party_role (role_type_id, party_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS wkeff_pa_prty_role
    ON public.work_effort_party_assignment USING btree
    (party_id COLLATE pg_catalog."default" ASC NULLS LAST, role_type_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.sales_opportunity_competitor
    ALTER COLUMN competitor_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_competitor
    ALTER COLUMN position_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_competitor
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.return_reason
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_reason
    ALTER COLUMN return_reason_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_reason
    ALTER COLUMN sequence_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.deduction
    ALTER COLUMN deduction_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.deduction
    ALTER COLUMN deduction_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.deduction
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_contact_mech
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_contact_mech
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.budget_type
    ALTER COLUMN budget_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_employment_appl
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_employment_appl
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_employment_appl
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_employment_appl
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_employment_appl
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_employment_appl
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.valid_contact_mech_role
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.valid_contact_mech_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.content_assoc_type
    ALTER COLUMN content_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_assoc_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE IF EXISTS public.time_entry DROP COLUMN IF EXISTS plan_hours;
ALTER TABLE public.time_entry
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.time_entry
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.time_entry
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.time_entry
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.time_entry
    ALTER COLUMN rate_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.time_entry
    ALTER COLUMN time_entry_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.time_entry
    ALTER COLUMN timesheet_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.time_entry
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.time_entry DROP CONSTRAINT IF EXISTS time_ent_invit;
ALTER TABLE IF EXISTS public.time_entry
    ADD CONSTRAINT time_ent_invit FOREIGN KEY (invoice_id, invoice_item_seq_id)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
ALTER TABLE public.shipment_contact_mech_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_contact_mech_type
    ALTER COLUMN shipment_contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_type
    ALTER COLUMN product_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_meter
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_meter
    ALTER COLUMN maint_hist_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_meter
    ALTER COLUMN product_meter_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_meter
    ALTER COLUMN reading_reason_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_meter
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cust_request_category
    ALTER COLUMN cust_request_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_category
    ALTER COLUMN cust_request_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_category
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.payroll_preference
    ALTER COLUMN account_number TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN bank_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN deduction_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN payroll_preference_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN period_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payroll_preference
    ALTER COLUMN routing_number TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.empl_position_fulfillment
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_fulfillment
    ALTER COLUMN empl_position_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_fulfillment
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_config_item
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_item
    ALTER COLUMN config_item_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_item
    ALTER COLUMN config_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_item
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_item
    ALTER COLUMN image_url TYPE character varying(2000) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.variance_reason
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.variance_reason
    ALTER COLUMN variance_reason_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shopping_list_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list_type
    ALTER COLUMN shopping_list_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.lot
    ALTER COLUMN lot_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.person
    ALTER COLUMN card_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN employment_status_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN first_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN first_name_local TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN last_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN last_name_local TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN member_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN middle_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN middle_name_local TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN mothers_maiden_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN nickname TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN occupation TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN other_local TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN passport_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN personal_title TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN residence_status_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN salutation TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN social_security_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.person
    ALTER COLUMN suffix TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.person
    ADD COLUMN marital_status_enum_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.person
    ADD CONSTRAINT person_marital FOREIGN KEY (marital_status_enum_id)
    REFERENCES public.enumeration (enum_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS person_marital
    ON public.person USING btree
    (marital_status_enum_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.shopping_list_item
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list_item
    ALTER COLUMN shopping_list_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shopping_list_item
    ALTER COLUMN shopping_list_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_classification
    ALTER COLUMN party_classification_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_classification
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN tax_authority_rate_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN tax_authority_rate_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_product
    ALTER COLUMN title_transfer_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.tax_authority_rate_product
    ADD COLUMN is_tax_in_shipping_price character(1) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_type
    ALTER COLUMN party_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_scenario_rule
    ALTER COLUMN budget_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_scenario_rule
    ALTER COLUMN budget_scenario_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_config
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_config
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_config
    ALTER COLUMN payment_gateway_config_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_item_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_item_type_attr
    ALTER COLUMN inventory_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.inventory_item_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.uom_group
    ALTER COLUMN uom_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_group
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_gateway_usps
    ALTER COLUMN access_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_usps
    ALTER COLUMN access_user_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_usps
    ALTER COLUMN connect_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_usps
    ALTER COLUMN connect_url_labels TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_usps
    ALTER COLUMN shipment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_usps
    ALTER COLUMN test TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.keyword_thesaurus
    ALTER COLUMN alternate_keyword TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.keyword_thesaurus
    ALTER COLUMN entered_keyword TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.keyword_thesaurus
    ALTER COLUMN relationship_enum_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.entity_group_entry
    ALTER COLUMN appl_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_group_entry
    ALTER COLUMN entity_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_group_entry
    ALTER COLUMN entity_or_package TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_product
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_product
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_product
    ALTER COLUMN fixed_asset_product_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_product
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_product
    ALTER COLUMN quantity_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_review
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_review
    ALTER COLUMN budget_review_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_review
    ALTER COLUMN budget_review_result_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_review
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.need_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.need_type
    ALTER COLUMN need_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.country_address_format
    ALTER COLUMN address_format TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.country_address_format
    ALTER COLUMN geo_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.country_address_format
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.country_address_format
    ALTER COLUMN postal_code_regex TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.country_address_format
    ALTER COLUMN require_state_province_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.tracking_code_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tracking_code_type
    ALTER COLUMN tracking_code_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fin_account_status
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fin_account_status
    ADD COLUMN change_by_user_login_id character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fin_account_status
    ADD CONSTRAINT finact_stts_user FOREIGN KEY (change_by_user_login_id)
    REFERENCES public.user_login (user_login_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS finact_stts_user
    ON public.fin_account_status USING btree
    (change_by_user_login_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.empl_position
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position
    ALTER COLUMN empl_position_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position
    ALTER COLUMN empl_position_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.entity_sync_include_group
    ALTER COLUMN entity_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_sync_include_group
    ALTER COLUMN entity_sync_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.uom_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.uom_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.uom_type
    ALTER COLUMN uom_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_resume
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_resume
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_resume
    ALTER COLUMN resume_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_resume
    ALTER COLUMN resume_text TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.tarpitted_login_view
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tarpitted_login_view
    ALTER COLUMN view_name_id TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.return_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_type
    ALTER COLUMN return_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_type
    ALTER COLUMN sequence_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.return_type
    ADD COLUMN has_table character(1) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.return_type
    ADD COLUMN parent_type_id character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_geo_point
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_geo_point
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.termination_reason
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.termination_reason
    ALTER COLUMN termination_reason_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.accommodation_class
    ALTER COLUMN accommodation_class_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_class
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.accommodation_class
    ALTER COLUMN parent_class_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_price_action_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_action_type
    ALTER COLUMN product_price_action_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_config_product
    ALTER COLUMN config_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_product
    ALTER COLUMN config_option_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_config_product
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data, posted_balance is empty
ALTER TABLE IF EXISTS public.gl_account_organization DROP COLUMN IF EXISTS posted_balance;
ALTER TABLE public.gl_account_organization
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_organization
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_organization
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_deliverable_prod
    ALTER COLUMN deliverable_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_deliverable_prod
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.facility_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.facility_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.facility_attribute
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.facility_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.party_carrier_account
    ALTER COLUMN account_number TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_carrier_account
    ALTER COLUMN carrier_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_carrier_account
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_contact_mech
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_contact_mech
    ALTER COLUMN extension TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_contact_mech
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_contact_mech
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fin_account_trans_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans_type_attr
    ALTER COLUMN fin_account_trans_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fin_account_trans_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.party_skill
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_skill
    ALTER COLUMN skill_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sales_opportunity_quote
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_quote
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_status
    ALTER COLUMN change_reason TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_status
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_status
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_status
    ALTER COLUMN order_payment_preference_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_status
    ALTER COLUMN order_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_status
    ALTER COLUMN status_user_login TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_category_link
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN detail_sub_screen TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN image_two_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN image_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN link_info TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN link_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN link_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_link
    ALTER COLUMN title_text TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.tech_data_calendar_exc_week
    ALTER COLUMN calendar_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tech_data_calendar_exc_week
    ALTER COLUMN calendar_week_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tech_data_calendar_exc_week
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.empl_leave_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave_type
    ALTER COLUMN leave_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_leave_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_price_info
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_price_info
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_price_info
    ALTER COLUMN order_item_price_info_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_price_info
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_price_info
    ALTER COLUMN product_price_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_price_info
    ALTER COLUMN product_price_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_price_info
    ALTER COLUMN rate_code TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.temporal_expression
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.temporal_expression
    ALTER COLUMN string1 TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.temporal_expression
    ALTER COLUMN string2 TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.temporal_expression
    ALTER COLUMN temp_expr_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.temporal_expression
    ALTER COLUMN temp_expr_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE IF EXISTS public.server_hit DROP COLUMN IF EXISTS created_stamp;
ALTER TABLE IF EXISTS public.server_hit DROP COLUMN IF EXISTS created_tx_stamp;
ALTER TABLE IF EXISTS public.server_hit DROP COLUMN IF EXISTS last_updated_stamp;
ALTER TABLE IF EXISTS public.server_hit DROP COLUMN IF EXISTS last_updated_tx_stamp;
ALTER TABLE public.server_hit
    ALTER COLUMN content_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN hit_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN id_by_ip_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN internal_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN ref_by_web_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN referrer_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN request_url TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN server_host_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN server_ip_address TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit
    ALTER COLUMN visit_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.server_hit DROP CONSTRAINT IF EXISTS server_hit_cnt;
ALTER TABLE IF EXISTS public.server_hit DROP CONSTRAINT IF EXISTS server_hit_idbyip;
ALTER TABLE IF EXISTS public.server_hit DROP CONSTRAINT IF EXISTS server_hit_party;
ALTER TABLE IF EXISTS public.server_hit DROP CONSTRAINT IF EXISTS server_hit_refweb;
ALTER TABLE IF EXISTS public.server_hit DROP CONSTRAINT IF EXISTS server_hit_status;
ALTER TABLE IF EXISTS public.server_hit DROP CONSTRAINT IF EXISTS server_hit_user;
DROP INDEX IF EXISTS public.server_hit_party;
DROP INDEX IF EXISTS public.server_hit_txstmp;
DROP INDEX IF EXISTS public.server_hit_refweb;
DROP INDEX IF EXISTS public.server_hit_txcrts;
DROP INDEX IF EXISTS public.server_hit_user;
DROP INDEX IF EXISTS public.server_hit_cnt;
DROP INDEX IF EXISTS public.server_hit_status;
DROP INDEX IF EXISTS public.server_hit_idbyip;

ALTER TABLE public.job_interview
    ALTER COLUMN grade_secured_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_interview
    ALTER COLUMN job_interview_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_interview
    ALTER COLUMN job_interview_result TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_interview
    ALTER COLUMN job_interview_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_interview
    ALTER COLUMN job_interviewee_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_interview
    ALTER COLUMN job_interviewer_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.job_interview
    ALTER COLUMN job_requisition_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_ship_group_assoc
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group_assoc
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_ship_group_assoc
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.comm_event_content_assoc
    ALTER COLUMN comm_content_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.comm_event_content_assoc
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.comm_event_content_assoc
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.marketing_campaign_price
    ALTER COLUMN marketing_campaign_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.marketing_campaign_price
    ALTER COLUMN product_price_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.marketing_campaign_price
    ADD COLUMN from_date timestamp with time zone NOT NULL;
ALTER TABLE IF EXISTS public.marketing_campaign_price
    ADD COLUMN thru_date timestamp with time zone;
ALTER TABLE IF EXISTS public.marketing_campaign_price DROP CONSTRAINT IF EXISTS pk_marketing_campaign_price;
ALTER TABLE IF EXISTS public.marketing_campaign_price
    ADD CONSTRAINT pk_marketing_campaign_price PRIMARY KEY (marketing_campaign_id, product_price_rule_id, from_date);

ALTER TABLE public.product_group_order
    ALTER COLUMN group_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_group_order
    ALTER COLUMN job_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_group_order
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_group_order
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.test_field_type
    ALTER COLUMN test_field_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.entity_audit_log
    ALTER COLUMN audit_history_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.entity_audit_log
    ALTER COLUMN changed_by_info TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_audit_log
    ALTER COLUMN changed_entity_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_audit_log
    ALTER COLUMN changed_field_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_audit_log
    ALTER COLUMN changed_session_info TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_audit_log
    ALTER COLUMN new_value_text TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_audit_log
    ALTER COLUMN old_value_text TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.entity_audit_log
    ALTER COLUMN pk_combined_value_text TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.picklist_item
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_item
    ALTER COLUMN item_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_item
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_item
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_item
    ALTER COLUMN picklist_bin_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.picklist_item
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.order_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_attribute
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.order_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.supplier_product
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN quantity_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN supplier_pref_order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN supplier_product_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN supplier_product_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.supplier_product
    ALTER COLUMN supplier_rating_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_category_rollup
    ALTER COLUMN parent_product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_rollup
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.facility_carrier_shipment
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_carrier_shipment
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_carrier_shipment
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_carrier_shipment
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.web_analytics_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.web_analytics_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_analytics_type
    ALTER COLUMN web_analytics_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_price
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN custom_price_calc_service TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN product_price_purpose_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN product_price_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN product_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price
    ALTER COLUMN term_uom_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.invoice_role
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_role DROP CONSTRAINT IF EXISTS invce_rle_invce;
ALTER TABLE IF EXISTS public.invoice_role
    ADD CONSTRAINT invce_rle_invce FOREIGN KEY (invoice_id)
    REFERENCES public.invoice (invoice_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

-- Contains data
ALTER TABLE public.person_training
    ALTER COLUMN approval_status TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.person_training
    ALTER COLUMN approver_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person_training
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person_training
    ALTER COLUMN reason TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.person_training
    ALTER COLUMN training_class_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person_training
    ALTER COLUMN training_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.person_training
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_subscription_resource
    ALTER COLUMN available_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_subscription_resource
    ALTER COLUMN cancl_autm_ext_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_subscription_resource
    ALTER COLUMN grace_period_on_expiry_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_subscription_resource
    ALTER COLUMN max_life_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_subscription_resource
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_subscription_resource
    ALTER COLUMN subscription_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_subscription_resource
    ALTER COLUMN use_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_subscription_resource
    ALTER COLUMN use_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_subscription_resource
    ADD CONSTRAINT prod_sbrs_gtu FOREIGN KEY (grace_period_on_expiry_uom_id)
    REFERENCES public.uom (uom_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS prod_sbrs_gtu
    ON public.product_subscription_resource USING btree
    (grace_period_on_expiry_uom_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.requirement_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_type
    ALTER COLUMN requirement_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sales_opportunity_history
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_history
    ALTER COLUMN modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_history
    ALTER COLUMN opportunity_stage_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_history
    ALTER COLUMN sales_opportunity_history_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_opportunity_history
    ALTER COLUMN sales_opportunity_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.facility
    ALTER COLUMN default_dimension_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN default_inventory_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN default_weight_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN facility_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN facility_size_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN facility_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN owner_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN parent_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN primary_facility_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.facility
    ADD COLUMN facility_level numeric(20, 0);

-- Contains data
ALTER TABLE public.party_contact_mech_purpose
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_contact_mech_purpose
    ALTER COLUMN contact_mech_purpose_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_contact_mech_purpose
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fin_account_trans
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN fin_account_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN fin_account_trans_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN gl_reconciliation_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN performed_by_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN reason_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account_trans
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fixed_asset_product_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_product_type
    ALTER COLUMN fixed_asset_product_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN api_environment TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN api_password TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN api_signature TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN api_user_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN business_email TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN cancel_return_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN confirm_template TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN confirm_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN image_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN notify_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN redirect_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN return_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_pay_pal
    ALTER COLUMN shipping_callback_url TYPE character varying(2000) COLLATE pg_catalog."default";

ALTER TABLE public.mrp_event
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.mrp_event
    ALTER COLUMN mrp_event_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.mrp_event
    ALTER COLUMN mrp_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.mrp_event
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.mrp_event
    ADD COLUMN facility_id_to character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_price_rule
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_rule
    ALTER COLUMN product_price_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_rule
    ALTER COLUMN rule_name TYPE character varying(100) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cust_request_item_note
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item_note
    ALTER COLUMN cust_request_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item_note
    ALTER COLUMN note_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.skill_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.skill_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.skill_type
    ALTER COLUMN skill_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.carrier_shipment_box_type
    ALTER COLUMN oversize_code TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.carrier_shipment_box_type
    ALTER COLUMN packaging_type_code TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.carrier_shipment_box_type
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.carrier_shipment_box_type
    ALTER COLUMN shipment_box_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_method_type_gl_account
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method_type_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_method_type_gl_account
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.gl_reconciliation
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation
    ALTER COLUMN gl_reconciliation_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation
    ALTER COLUMN gl_reconciliation_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_reconciliation
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.item_issuance
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN issued_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN item_issuance_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN maint_hist_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.item_issuance
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN billing_weight_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN carrier_delivery_zone TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN carrier_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN carrier_restriction_codes TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN carrier_service_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN delivery_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN dest_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN dest_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN dest_telecom_number_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN home_delivery_type TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN origin_contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN origin_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN origin_telecom_number_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN shipment_route_segment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN third_party_account_number TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN third_party_country_geo_code TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN third_party_postal_code TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN tracking_id_number TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_route_segment
    ALTER COLUMN updated_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cust_request_type
    ALTER COLUMN cust_request_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_type
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.requirement_cust_request
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_cust_request
    ALTER COLUMN cust_request_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement_cust_request
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_category_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_content_type
    ALTER COLUMN prod_cat_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.fin_account
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN fin_account_code TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN fin_account_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN fin_account_pin TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN fin_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN owner_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN post_to_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN replenish_payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fin_account
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_vendor_shipment
    ALTER COLUMN carrier_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_vendor_shipment
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_vendor_shipment
    ALTER COLUMN shipment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_vendor_shipment
    ALTER COLUMN vendor_party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_tax_auth_info
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_tax_auth_info
    ALTER COLUMN party_tax_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.party_tax_auth_info
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_tax_auth_info
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.tax_authority
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority
    ALTER COLUMN tax_id_format_pattern TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_assoc_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc_type_attr
    ALTER COLUMN work_effort_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.work_effort_assoc_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.acctg_trans_attribute
    ALTER COLUMN acctg_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.acctg_trans_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.acctg_trans_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE IF EXISTS public.server_hit_bin DROP COLUMN IF EXISTS created_stamp;
ALTER TABLE IF EXISTS public.server_hit_bin DROP COLUMN IF EXISTS created_tx_stamp;
ALTER TABLE IF EXISTS public.server_hit_bin DROP COLUMN IF EXISTS last_updated_stamp;
ALTER TABLE IF EXISTS public.server_hit_bin DROP COLUMN IF EXISTS last_updated_tx_stamp;
ALTER TABLE public.server_hit_bin
    ALTER COLUMN content_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit_bin
    ALTER COLUMN hit_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit_bin
    ALTER COLUMN internal_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit_bin
    ALTER COLUMN server_hit_bin_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit_bin
    ALTER COLUMN server_host_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.server_hit_bin
    ALTER COLUMN server_ip_address TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.server_hit_bin DROP CONSTRAINT IF EXISTS server_hbin_cnt;
DROP INDEX IF EXISTS public.srvr_ht_bn_txcrts;
DROP INDEX IF EXISTS public.srvr_ht_bn_txstmp;
DROP INDEX IF EXISTS public.server_hbin_cnt;

ALTER TABLE public.facility_content
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_content
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cust_request_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_attribute
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.cust_request_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.portal_page_column
    ALTER COLUMN column_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_page_column
    ALTER COLUMN portal_page_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_price_cond
    ALTER COLUMN cond_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_cond
    ALTER COLUMN input_param_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_cond
    ALTER COLUMN operator_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_cond
    ALTER COLUMN product_price_cond_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_cond
    ALTER COLUMN product_price_rule_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_fixed_asset_assign
    ALTER COLUMN availability_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_fixed_asset_assign
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_fixed_asset_assign
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_fixed_asset_assign
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_fixed_asset_assign
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.addendum
    ALTER COLUMN addendum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.addendum
    ALTER COLUMN addendum_text TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.addendum
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.addendum
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.data_source_type
    ALTER COLUMN data_source_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_source_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.content_approval
    ALTER COLUMN approval_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_approval
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.content_approval
    ALTER COLUMN content_approval_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_approval
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_approval
    ALTER COLUMN content_revision_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_approval
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_approval
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.employment
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment
    ALTER COLUMN role_type_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment
    ALTER COLUMN termination_reason_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.employment
    ALTER COLUMN termination_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cust_request_item
    ALTER COLUMN config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item
    ALTER COLUMN cust_request_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item
    ALTER COLUMN cust_request_resolution_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.deliverable
    ALTER COLUMN deliverable_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.deliverable
    ALTER COLUMN deliverable_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.deliverable
    ALTER COLUMN deliverable_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.deliverable
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_group
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_group
    ALTER COLUMN product_feature_group_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.portlet_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.portlet_attribute
    ALTER COLUMN attr_type TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portlet_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portlet_attribute
    ALTER COLUMN portal_page_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portlet_attribute
    ALTER COLUMN portal_portlet_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portlet_attribute
    ALTER COLUMN portlet_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.portlet_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_meter_type
    ALTER COLUMN default_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_meter_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_meter_type
    ALTER COLUMN product_meter_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_payment_preference
    ALTER COLUMN billing_postal_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN fin_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN manual_auth_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN manual_ref_num TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN order_payment_preference_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN product_price_purpose_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN security_code TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_payment_preference
    ALTER COLUMN track2 TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.eft_account
    ALTER COLUMN account_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.eft_account
    ALTER COLUMN account_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.eft_account
    ALTER COLUMN bank_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.eft_account
    ALTER COLUMN company_name_on_account TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.eft_account
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.eft_account
    ALTER COLUMN name_on_account TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.eft_account
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.eft_account
    ALTER COLUMN routing_number TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.web_page
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_page
    ALTER COLUMN page_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.web_page
    ALTER COLUMN web_page_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.web_page
    ALTER COLUMN web_site_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_item_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_type
    ALTER COLUMN order_item_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_item_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_group_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_group_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_group_type
    ALTER COLUMN payment_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.shipment_receipt_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt_role
    ALTER COLUMN receipt_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_receipt_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.empl_position_type_class
    ALTER COLUMN empl_position_class_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.empl_position_type_class
    ALTER COLUMN empl_position_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_geographical_applic
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_geographical_applic
    ALTER COLUMN agreement_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_geographical_applic
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.return_adjustment
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN corresponding_product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN customer_reference_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN order_adjustment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN override_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN primary_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN product_promo_action_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN product_promo_rule_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN return_adjustment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN return_adjustment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN return_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN return_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN secondary_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN ship_group_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN source_reference_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_adjustment
    ALTER COLUMN tax_authority_rate_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.country_tele_code
    ALTER COLUMN country_code TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.country_tele_code
    ALTER COLUMN tele_code TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.work_effort_assoc
    ALTER COLUMN work_effort_assoc_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc
    ALTER COLUMN work_effort_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_assoc
    ALTER COLUMN work_effort_id_to TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.telecom_number
    ALTER COLUMN area_code TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.telecom_number
    ALTER COLUMN ask_for_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.telecom_number
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.telecom_number
    ALTER COLUMN contact_number TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.telecom_number
    ALTER COLUMN country_code TYPE character varying(10) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.prod_conf_item_content_type
    ALTER COLUMN conf_item_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.prod_conf_item_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.prod_conf_item_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.party_identification
    ALTER COLUMN id_value TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.party_identification
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_identification
    ALTER COLUMN party_identification_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.party_identification DROP CONSTRAINT IF EXISTS party_id_prodict;
ALTER TABLE IF EXISTS public.party_identification
    ADD CONSTRAINT party_id_product FOREIGN KEY (party_id)
    REFERENCES public.party (party_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS party_id_product
    ON public.party_identification USING btree
    (party_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
DROP INDEX IF EXISTS public.party_id_prodict;

-- Contains data
ALTER TABLE public.facility_group_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group_type
    ALTER COLUMN facility_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_type
    ALTER COLUMN payment_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.facility_group_member
    ALTER COLUMN facility_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group_member
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.role_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.role_type_attr
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.role_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE IF EXISTS public.product_store DROP COLUMN IF EXISTS header_logo;
ALTER TABLE IF EXISTS public.product_store DROP COLUMN IF EXISTS header_middle_background;
ALTER TABLE IF EXISTS public.product_store DROP COLUMN IF EXISTS header_right_background;
ALTER TABLE IF EXISTS public.product_store DROP COLUMN IF EXISTS style_sheet;
ALTER TABLE public.product_store
    ALTER COLUMN auth_declined_message TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN auth_error_message TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN auth_fraud_message TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN company_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN default_currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN default_locale_string TYPE character varying(10) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN default_password TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN default_sales_channel_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN dig_prod_upload_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN digital_item_approved_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN header_approved_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN header_cancel_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN header_declined_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN inventory_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN item_approved_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN item_cancel_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN item_declined_status TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN order_number_prefix TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN pay_to_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN primary_store_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN requirement_method_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN reserve_order_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN store_credit_account_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN store_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN subtitle TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN title TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN vat_tax_auth_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN vat_tax_auth_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store
    ALTER COLUMN visual_theme_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_store
    ADD COLUMN allocate_inventory character(1) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_store
    ADD COLUMN allow_comment character(1) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_store
    ADD COLUMN default_time_zone_string character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_price_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_price_type
    ALTER COLUMN product_price_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.quote_coefficient
    ALTER COLUMN coeff_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.quote_coefficient
    ALTER COLUMN quote_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.cost_component_calc
    ALTER COLUMN cost_component_calc_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_calc
    ALTER COLUMN cost_custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_calc
    ALTER COLUMN cost_gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_calc
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_calc
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.cost_component_calc
    ALTER COLUMN offsetting_gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.subscription
    ALTER COLUMN available_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN cancl_autm_ext_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN external_subscription_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN grace_period_on_expiry_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN max_life_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN need_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN originated_from_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN originated_from_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN party_need_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN subscription_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN subscription_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN subscription_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.subscription
    ALTER COLUMN use_time_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.subscription
    ADD CONSTRAINT subsc_gtu FOREIGN KEY (grace_period_on_expiry_uom_id)
    REFERENCES public.uom (uom_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS subsc_gtu
    ON public.subscription USING btree
    (grace_period_on_expiry_uom_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.postal_address
    ALTER COLUMN address1 TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN address2 TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN attn_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN city TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN country_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN county_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN directions TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN geo_point_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN postal_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN postal_code_ext TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN postal_code_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN state_province_geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.postal_address
    ALTER COLUMN to_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.postal_address
    ADD COLUMN city_geo_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.postal_address
    ADD COLUMN house_number numeric(20, 0);
ALTER TABLE IF EXISTS public.postal_address
    ADD COLUMN house_number_ext character varying(60) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.postal_address
    ADD COLUMN municipality_geo_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.postal_address
    ADD CONSTRAINT post_addr_city FOREIGN KEY (city_geo_id)
    REFERENCES public.geo (geo_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
ALTER TABLE IF EXISTS public.postal_address
    ADD CONSTRAINT post_addr_mncp FOREIGN KEY (municipality_geo_id)
    REFERENCES public.geo (geo_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS post_addr_city
    ON public.postal_address USING btree
    (city_geo_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS post_addr_mncp
    ON public.postal_address USING btree
    (municipality_geo_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Contains data
ALTER TABLE public.work_effort_keyword
    ALTER COLUMN keyword TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_keyword
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.tax_authority_rate_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.tax_authority_rate_type
    ALTER COLUMN tax_authority_rate_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_facility
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_facility
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_facility
    ADD COLUMN replenish_method_enum_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_facility
    ADD COLUMN requirement_method_enum_id character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_facility
    ADD CONSTRAINT prod_fac_rep FOREIGN KEY (replenish_method_enum_id)
    REFERENCES public.enumeration (enum_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
ALTER TABLE IF EXISTS public.product_facility
    ADD CONSTRAINT prod_fac_req FOREIGN KEY (requirement_method_enum_id)
    REFERENCES public.enumeration (enum_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS prod_fac_rep
    ON public.product_facility USING btree
    (replenish_method_enum_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE INDEX IF NOT EXISTS prod_fac_req
    ON public.product_facility USING btree
    (requirement_method_enum_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE public.shipment_contact_mech
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_contact_mech
    ALTER COLUMN shipment_contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_contact_mech
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.protocol_type
    ALTER COLUMN protocol_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.protocol_type
    ALTER COLUMN protocol_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_vendor_payment
    ALTER COLUMN credit_card_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_vendor_payment
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_vendor_payment
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_vendor_payment
    ALTER COLUMN vendor_party_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.sales_forecast_detail
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_detail
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_detail
    ALTER COLUMN quantity_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_detail
    ALTER COLUMN sales_forecast_detail_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.sales_forecast_detail
    ALTER COLUMN sales_forecast_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.contact_mech_type_attr
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.contact_mech_type_attr
    ALTER COLUMN contact_mech_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.contact_mech_type_attr
    ADD COLUMN description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.inventory_transfer
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN container_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN container_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN facility_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN inventory_item_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN inventory_transfer_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN item_issuance_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN location_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN location_seq_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.inventory_transfer
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.budget_item_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item_attribute
    ALTER COLUMN budget_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.budget_item_attribute
    ALTER COLUMN budget_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.budget_item_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN auth_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN card_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN fulfillment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN merchant_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN order_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN pin_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN reference_num TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN response_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN survey_response_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gift_card_fulfillment
    ALTER COLUMN type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_classification_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_classification_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_classification_type
    ALTER COLUMN party_classification_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_promo
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo
    ALTER COLUMN override_org_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo
    ALTER COLUMN product_promo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo
    ALTER COLUMN promo_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.product_promo
    ALTER COLUMN promo_text TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_attribute
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.work_effort_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.order_role
    ALTER COLUMN order_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.order_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_billing
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_billing
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_billing
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.work_effort_billing DROP CONSTRAINT IF EXISTS wk_effblng_invitm;
ALTER TABLE IF EXISTS public.work_effort_billing
    ADD CONSTRAINT wk_effblng_invitm FOREIGN KEY (invoice_id, invoice_item_seq_id)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

-- Contains data
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN api_version TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN certificate_alias TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN cp_device_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN cp_market_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN cp_version TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN delimited_data TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN delimiter_char TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN email_customer TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN email_merchant TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN method TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN pwd TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN relay_response TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN test_mode TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN tran_key TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN trans_description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN transaction_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_authorize_net
    ALTER COLUMN user_id TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.agreement_role
    ALTER COLUMN agreement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.agreement_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.character_set
    ALTER COLUMN character_set_id TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.character_set
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.delivery
    ALTER COLUMN delivery_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.delivery
    ALTER COLUMN dest_facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.delivery
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.delivery
    ALTER COLUMN origin_facility_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_category_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_category_attribute
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.product_category_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.catalina_session
    ALTER COLUMN session_id TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_relationship_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship_type
    ALTER COLUMN party_relationship_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship_type
    ALTER COLUMN party_relationship_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship_type
    ALTER COLUMN role_type_id_valid_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_relationship_type
    ALTER COLUMN role_type_id_valid_to TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.party_content_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.party_content_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.party_content_type
    ALTER COLUMN party_content_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.facility_party
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_party
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_party
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.gl_account_group
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_group
    ALTER COLUMN gl_account_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_group
    ALTER COLUMN gl_account_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.work_effort_survey_appl
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.work_effort_survey_appl
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_feature_cat_grp_appl
    ALTER COLUMN product_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_cat_grp_appl
    ALTER COLUMN product_feature_group_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_store_payment_setting
    ALTER COLUMN payment_custom_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_payment_setting
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_payment_setting
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_payment_setting
    ALTER COLUMN payment_properties_path TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_payment_setting
    ALTER COLUMN payment_service TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_payment_setting
    ALTER COLUMN payment_service_type_enum_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_payment_setting
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.product_store_catalog
    ALTER COLUMN prod_catalog_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_store_catalog
    ALTER COLUMN product_store_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN api_version TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN auto_bill TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN avs_decline_codes TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN ignore_avs TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN keys_dir TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN keys_file TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN log_dir TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN log_enabled TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN log_file TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN merchant_contact TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN merchant_descr TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN merchant_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN payment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gateway_cyber_source
    ALTER COLUMN production TYPE character varying(60) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_feature
    ALTER COLUMN abbrev TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature
    ALTER COLUMN id_code TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature
    ALTER COLUMN product_feature_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature
    ALTER COLUMN product_feature_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature
    ALTER COLUMN uom_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.user_agent_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.user_agent_type
    ALTER COLUMN user_agent_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment_gl_account_type_map
    ALTER COLUMN gl_account_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gl_account_type_map
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment_gl_account_type_map
    ALTER COLUMN payment_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN acc_dep_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN asset_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN dep_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN fixed_asset_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN loss_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN organization_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_type_gl_account
    ALTER COLUMN profit_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.content_meta_data
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_meta_data
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.content_meta_data
    ALTER COLUMN meta_data_predicate_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.content_meta_data DROP CONSTRAINT IF EXISTS pk_content_meta_data;
ALTER TABLE IF EXISTS public.content_meta_data
    ADD CONSTRAINT pk_content_meta_data PRIMARY KEY (content_id, meta_data_predicate_id);
ALTER TABLE public.content_meta_data
    ALTER COLUMN meta_data_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.content_meta_data
    ALTER COLUMN meta_data_value DROP NOT NULL;

-- Contains data
ALTER TABLE public.portal_portlet
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN edit_form_location TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN edit_form_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN portal_portlet_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN portlet_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN screen_location TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN screen_name TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN screenshot TYPE character varying(2000) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN security_main_action TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.portal_portlet
    ALTER COLUMN security_service_name TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.survey_response_answer
    ALTER COLUMN amount_base_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response_answer
    ALTER COLUMN content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response_answer
    ALTER COLUMN duration_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response_answer
    ALTER COLUMN survey_multi_resp_col_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response_answer
    ALTER COLUMN survey_multi_resp_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response_answer
    ALTER COLUMN survey_option_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response_answer
    ALTER COLUMN survey_question_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_response_answer
    ALTER COLUMN survey_response_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.timesheet
    ALTER COLUMN approved_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.timesheet
    ALTER COLUMN client_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.timesheet
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.timesheet
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.timesheet
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.timesheet
    ALTER COLUMN timesheet_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.requirement
    ALTER COLUMN created_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN deliverable_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN facility_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN last_modified_by_user_login TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN product_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN reason TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN requirement_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.requirement
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.requirement
    ADD COLUMN facility_id_to character varying(20) COLLATE pg_catalog."default";

ALTER TABLE IF EXISTS public.data_resource_meta_data DROP CONSTRAINT IF EXISTS pk_data_resource_meta_data;
ALTER TABLE public.data_resource_meta_data
    ALTER COLUMN data_resource_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_meta_data
    ALTER COLUMN data_source_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_meta_data
    ALTER COLUMN meta_data_predicate_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.data_resource_meta_data
    ALTER COLUMN meta_data_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.data_resource_meta_data
    ALTER COLUMN meta_data_value DROP NOT NULL;
ALTER TABLE IF EXISTS public.data_resource_meta_data
    ADD CONSTRAINT pk_data_resource_meta_data PRIMARY KEY (data_resource_id, meta_data_predicate_id);

ALTER TABLE public.product_feature_group_appl
    ALTER COLUMN product_feature_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_group_appl
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.survey_question
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question
    ALTER COLUMN enum_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question
    ALTER COLUMN format_string TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question
    ALTER COLUMN geo_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question
    ALTER COLUMN survey_question_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question
    ALTER COLUMN survey_question_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey_question
    ALTER COLUMN survey_question_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.cust_request_item_work_effort
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item_work_effort
    ALTER COLUMN cust_request_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_item_work_effort
    ALTER COLUMN work_effort_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.service_semaphore
    ALTER COLUMN lock_thread TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.service_semaphore
    ALTER COLUMN locked_by_instance_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.service_semaphore
    ALTER COLUMN service_name TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.desired_feature
    ALTER COLUMN desired_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.desired_feature
    ALTER COLUMN product_feature_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.desired_feature
    ALTER COLUMN requirement_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.facility_group
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group
    ALTER COLUMN facility_group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group
    ALTER COLUMN facility_group_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group
    ALTER COLUMN facility_group_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.facility_group
    ALTER COLUMN primary_parent_group_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.tech_data_calendar_week
    ALTER COLUMN calendar_week_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.tech_data_calendar_week
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.invoice_item_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_attribute
    ALTER COLUMN invoice_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.invoice_item_attribute
    ALTER COLUMN invoice_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_item_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.invoice_item_attribute DROP CONSTRAINT IF EXISTS invoice_imat_itm;
ALTER TABLE IF EXISTS public.invoice_item_attribute
    ADD CONSTRAINT invoice_imat_itm FOREIGN KEY (invoice_id, invoice_item_seq_id)
    REFERENCES public.invoice_item (invoice_id, invoice_item_seq_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE public.testing_node
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.testing_node
    ALTER COLUMN primary_parent_node_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.testing_node
    ALTER COLUMN testing_node_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.gl_account_category_member
    ALTER COLUMN gl_account_category_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.gl_account_category_member
    ALTER COLUMN gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.payment
    ALTER COLUMN actual_currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN currency_uom_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN fin_account_trans_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN override_gl_account_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN party_id_from TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN party_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN payment_gateway_response_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN payment_method_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN payment_method_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN payment_preference_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN payment_ref_num TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN payment_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN role_type_id_to TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.payment
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.perf_review
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review
    ALTER COLUMN empl_position_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review
    ALTER COLUMN employee_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review
    ALTER COLUMN employee_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review
    ALTER COLUMN manager_party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review
    ALTER COLUMN manager_role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review
    ALTER COLUMN payment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.perf_review
    ALTER COLUMN perf_review_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.return_status
    ALTER COLUMN change_by_user_login_id TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_status
    ALTER COLUMN return_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_status
    ALTER COLUMN return_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_status
    ALTER COLUMN return_status_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_status
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.survey
    ALTER COLUMN acro_form_content_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey
    ALTER COLUMN comments TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey
    ALTER COLUMN response_service TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.survey
    ALTER COLUMN submit_caption TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.survey
    ALTER COLUMN survey_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.survey
    ALTER COLUMN survey_name TYPE character varying(100) COLLATE pg_catalog."default";

ALTER TABLE public.shipping_document
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipping_document
    ALTER COLUMN document_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipping_document
    ALTER COLUMN shipment_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipping_document
    ALTER COLUMN shipment_item_seq_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipping_document
    ALTER COLUMN shipment_package_seq_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.product_feature_appl_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_appl_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.product_feature_appl_type
    ALTER COLUMN product_feature_appl_type_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN access_account_nbr TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN access_meter_number TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN access_user_key TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN access_user_pwd TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN connect_soap_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN connect_url TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN default_dropoff_type TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN default_packaging_type TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN label_image_type TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN rate_estimate_template TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN shipment_gateway_config_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN template_shipment TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.shipment_gateway_fedex
    ALTER COLUMN template_subscription TYPE character varying(255) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.communication_event_role
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_role
    ALTER COLUMN contact_mech_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_role
    ALTER COLUMN party_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_role
    ALTER COLUMN role_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.communication_event_role
    ALTER COLUMN status_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.return_header_type
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.return_header_type
    ALTER COLUMN parent_type_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.return_header_type
    ALTER COLUMN return_header_type_id TYPE character varying(20) COLLATE pg_catalog."default";

ALTER TABLE public.fixed_asset_attribute
    ALTER COLUMN attr_name TYPE character varying(60) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_attribute
    ALTER COLUMN attr_value TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.fixed_asset_attribute
    ALTER COLUMN fixed_asset_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.fixed_asset_attribute
    ADD COLUMN attr_description character varying(255) COLLATE pg_catalog."default";

ALTER TABLE public.cust_request_comm_event
    ALTER COLUMN communication_event_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE public.cust_request_comm_event
    ALTER COLUMN cust_request_id TYPE character varying(20) COLLATE pg_catalog."default";

-- Contains data
ALTER TABLE public.security_group
    ALTER COLUMN description TYPE character varying(255) COLLATE pg_catalog."default";
ALTER TABLE public.security_group
    ALTER COLUMN group_id TYPE character varying(20) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public.security_group
    ADD COLUMN group_name character varying(255) COLLATE pg_catalog."default";

ROLLBACK;  -- comment out to make actual changes to the database
-- COMMIT; -- uncomment to make actual changes to the database
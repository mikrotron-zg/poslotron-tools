-- Delete OFBiz seed data, then recreate tables, indexes and constraints
BEGIN;
DROP TABLE IF EXISTS public.content_keyword CASCADE;
DROP TABLE IF EXISTS public.content_purpose_operation CASCADE;
DROP TABLE IF EXISTS public.country_capital CASCADE;
DROP TABLE IF EXISTS public.country_code CASCADE;
DROP TABLE IF EXISTS public.country_tele_code CASCADE;
DROP TABLE IF EXISTS public.custom_method CASCADE;
DROP TABLE IF EXISTS public.entity_group_entry CASCADE;
DROP TABLE IF EXISTS public.enumeration CASCADE;
DROP TABLE IF EXISTS public.enumeration_type CASCADE;
DROP TABLE IF EXISTS public.geo CASCADE;
DROP TABLE IF EXISTS public.geo_assoc CASCADE;
DROP TABLE IF EXISTS public.gl_account_group CASCADE;
DROP TABLE IF EXISTS public.gl_account_type CASCADE;
DROP TABLE IF EXISTS public.invoice_item_type CASCADE;
DROP TABLE IF EXISTS public.invoice_item_type_map CASCADE;
DROP TABLE IF EXISTS public.mime_type CASCADE;
DROP TABLE IF EXISTS public.portal_portlet CASCADE;
DROP TABLE IF EXISTS public.product_content_type CASCADE;
DROP TABLE IF EXISTS public.role_type CASCADE;
DROP TABLE IF EXISTS public.security_group_permission CASCADE;
DROP TABLE IF EXISTS public.security_permission CASCADE;
DROP TABLE IF EXISTS public.standard_language CASCADE;
DROP TABLE IF EXISTS public.status_item CASCADE;
DROP TABLE IF EXISTS public.status_type CASCADE;
DROP TABLE IF EXISTS public.status_valid_change CASCADE;
DROP TABLE IF EXISTS public.temporal_expression CASCADE;
DROP TABLE IF EXISTS public.term_type CASCADE;
DROP TABLE IF EXISTS public.uom CASCADE;
DROP TABLE IF EXISTS public.uom_conversion CASCADE;

--ROLLBACK; -- comment out to make actual changes to the database
COMMIT; -- uncomment to make actual changes to the database

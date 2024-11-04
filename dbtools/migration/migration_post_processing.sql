-- Last step of migration, we need to make some data adjustment for new OFBiz version

-- Set last quote number in preferences
UPDATE party_acctg_preference SET last_quote_number = (SELECT MAX(quote_id)::INTEGER FROM quote) WHERE party_id = '10000';

-- Change/remove some HTML tags
UPDATE public.electronic_text SET text_data = REPLACE(text_data, '</br>', '<br>');
UPDATE public.electronic_text SET text_data = REPLACE(text_data, '<br/>', '<br>');
UPDATE public.electronic_text SET text_data = REPLACE(text_data, '<div>', '');
UPDATE public.electronic_text SET text_data = REPLACE(text_data, '</div>', '');
UPDATE public.electronic_text SET text_data = REPLACE(text_data, '<div style="clear:both;">', '');

-- Change product store theme to EC_DEFAULT
UPDATE public.product_store SET visual_theme_id = 'EC_DEFAULT', order_decimal_quantity = 'N' WHERE product_store_id = '10010';
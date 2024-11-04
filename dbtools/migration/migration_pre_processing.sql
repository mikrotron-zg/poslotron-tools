delete from party_data_source;
delete from product_search_constraint;
delete from product_search_result;
delete from cart_abandoned_line;
delete from visit;
-- last one only works after all the above have executed
delete from visitor vtr;

-- trimming strings

DROP FUNCTION IF EXISTS telecom_number_fix();
-- fixes values in columns 'area_code' and 'country_code'
-- longer than 10 characters in table 'telecom_number',
-- needed for database migration from OfBiz 13.07 to 22.01
CREATE FUNCTION telecom_number_fix() RETURNS integer AS $$
DECLARE
	count_ integer;
	area_code_new text;
	country_code_new text;
	row_ record;
BEGIN
	count_ := 0;
	FOR row_ IN
		SELECT contact_mech_id AS tn_id,
			area_code AS tn_ac, 
			country_code AS tn_cc
		FROM telecom_number
		WHERE LENGTH(area_code)>10 OR LENGTH(country_code)>10
	LOOP
		area_code_new := SUBSTRING(row_.tn_ac, 1, 10);
		country_code_new := SUBSTRING(row_.tn_cc, 1, 10);
		UPDATE telecom_number SET
			area_code = area_code_new,
			country_code = country_code_new
			WHERE contact_mech_id = row_.tn_id;
		IF FOUND THEN
			count_ = count_ + 1;
		END IF;
	END LOOP;
	RETURN count_;
END;
$$ LANGUAGE plpgsql;

SELECT telecom_number_fix();

DROP FUNCTION IF EXISTS shipping_instructions_fix();
-- fixes values in column 'shipping_instructions'
-- longer than 255 characters in table 'order_item_ship_group',
-- needed for database migration from OfBiz 13.07 to 24.09
CREATE FUNCTION shipping_instructions_fix() RETURNS integer AS $$
DECLARE
	count_ integer;
	instruction_new text;
	row_ record;
BEGIN
	count_ := 0;
	FOR row_ IN
		SELECT order_id AS o_id,
			shipping_instructions AS o_si
		FROM order_item_ship_group
		WHERE LENGTH(shipping_instructions)>255
	LOOP
		instruction_new := SUBSTRING(row_.o_si, 1, 255);
		UPDATE order_item_ship_group SET
			shipping_instructions = instruction_new
			WHERE order_id = row_.o_id;
		IF FOUND THEN
			count_ = count_ + 1;
		END IF;
	END LOOP;
	RETURN count_;
END;
$$ LANGUAGE plpgsql;

SELECT shipping_instructions_fix();


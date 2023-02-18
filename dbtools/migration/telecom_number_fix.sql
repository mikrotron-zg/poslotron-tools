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
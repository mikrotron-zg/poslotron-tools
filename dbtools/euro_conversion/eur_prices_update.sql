DROP FUNCTION IF EXISTS eur_prices_update(numeric);
-- recalculates all prices in EUR for given exchange_rate
-- returns number of updated rows
CREATE FUNCTION eur_prices_update(exchange_rate numeric(15,4)) RETURNS integer AS $$
DECLARE
	count_ integer;
	price_new numeric(18, 2);
	row_ record;
BEGIN
	count_ := 0;
	FOR row_ IN 
		SELECT product_id AS p_id,
			product_price_type_id AS type_id,
			price AS price_hrk
		FROM product_price 
		WHERE currency_uom_id = 'HRK'
	LOOP
		price_new := row_.price_hrk/exchange_rate;
		UPDATE product_price SET price = price_new WHERE 
			product_id = row_.p_id AND currency_uom_id = 'EUR' AND 
			product_price_type_id = row_.type_id;
		IF FOUND THEN
			count_ = count_ + 1;
		ELSE
			RAISE INFO 'No EUR price for ID % : %', row_.p_id, row_.type_id;
		END IF;
	END LOOP;
	RETURN count_;
END;
$$ LANGUAGE plpgsql;

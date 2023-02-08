DROP FUNCTION IF EXISTS supplier_eur_prices_update();
-- recalculates all supplier product prices to EUR and changes currency uom
-- returns number of updated rows
CREATE FUNCTION supplier_eur_prices_update() RETURNS integer AS $$
DECLARE
	exchange_rate CONSTANT numeric(18,5) := 7.5345;
	count_ integer;
	last_price_new numeric(18, 2);
	row_ record;
BEGIN
	count_ := 0;
	FOR row_ IN 
		SELECT product_id AS prod_id, party_id AS pa_id, last_price
		FROM supplier_product
		WHERE currency_uom_id = 'HRK'
	LOOP
		last_price_new := row_.last_price/exchange_rate;
		UPDATE supplier_product
			SET last_price = last_price_new, currency_uom_id = 'EUR'
			WHERE product_id = row_.prod_id AND party_id = row_.pa_id;
		IF FOUND THEN
			count_ = count_ + 1;
		ELSE
			RAISE INFO 'Row not found!';
		END IF;
	END LOOP;
	RETURN count_;
END;
$$ LANGUAGE plpgsql;
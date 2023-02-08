DROP FUNCTION IF EXISTS shipment_eur_prices_update();
-- recalculates all shipment prices to EUR and changes currency uom
-- returns number of updated rows
CREATE FUNCTION shipment_eur_prices_update() RETURNS integer AS $$
DECLARE
	exchange_rate CONSTANT numeric(18,5) := 7.5345;
	count_ integer;
	price_new numeric(18, 2);
	row_ record;
BEGIN
	count_ := 0;
	FOR row_ IN 
		SELECT shipment_cost_estimate_id AS sce_id,
			order_flat_price AS price_old
		FROM shipment_cost_estimate 
		WHERE product_store_id = '10010'
	LOOP
		price_new := row_.price_old/exchange_rate;
		UPDATE shipment_cost_estimate 
			SET order_flat_price = price_new, price_uom_id = 'EUR'
			WHERE shipment_cost_estimate_id = row_.sce_id;
		IF FOUND THEN
			count_ = count_ + 1;
		ELSE
			RAISE INFO 'ID % not found!', row_.sce_id;
		END IF;
	END LOOP;
	RETURN count_;
END;
$$ LANGUAGE plpgsql;
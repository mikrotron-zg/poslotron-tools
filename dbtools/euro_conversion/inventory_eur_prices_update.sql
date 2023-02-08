DROP FUNCTION IF EXISTS inventory_eur_prices_update();
-- recalculates all inventory items prices to EUR and changes currency uom
-- returns number of updated rows
CREATE FUNCTION inventory_eur_prices_update() RETURNS integer AS $$
DECLARE
	exchange_rate CONSTANT numeric(18,5) := 7.5345;
	count_ integer;
	unit_cost_new numeric(18, 2);
	row_ record;
BEGIN
	count_ := 0;
	FOR row_ IN 
		SELECT inventory_item_id AS ii_id,
			unit_cost AS unit_cost_old
		FROM inventory_item 
		WHERE currency_uom_id = 'HRK'
	LOOP
		unit_cost_new := row_.unit_cost_old/exchange_rate;
		UPDATE inventory_item 
			SET unit_cost = unit_cost_new, currency_uom_id = 'EUR'
			WHERE inventory_item_id = row_.ii_id;
		IF FOUND THEN
			count_ = count_ + 1;
		ELSE
			RAISE INFO 'ID % not found!', row_.ii_id;
		END IF;
	END LOOP;
	RETURN count_;
END;
$$ LANGUAGE plpgsql;
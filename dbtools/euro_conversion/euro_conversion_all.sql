-- IMPORT FUNCTIONS --

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

-- RUN CONVERSION --
BEGIN;

-- Set new default currency for HR web shop
UPDATE product_store SET default_currency_uom_id = 'EUR' WHERE product_store_id = '10010';

-- Set new currency for financial account
UPDATE fin_account SET currency_uom_id = 'EUR' WHERE currency_uom_id = 'HRK';

-- Set new currency for accounting account
UPDATE party_acctg_preference SET base_currency_uom_id = 'EUR' WHERE base_currency_uom_id = 'HRK';

-- Update shipment cost estimates
SELECT shipment_eur_prices_update();

-- Update inventory item costs
SELECT inventory_eur_prices_update();
SELECT supplier_eur_prices_update();

-- Set new default currency for customers
UPDATE party SET preferred_currency_uom_id = 'EUR' WHERE status_id = 'PARTY_ENABLED';

COMMIT;
SELECT 'All done!';
-- END --
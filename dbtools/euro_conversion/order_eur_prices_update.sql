DROP FUNCTION IF EXISTS order_eur_prices_update(text);
-- recalculates order prices to EUR and changes currency uom
-- for given order number, returns number of updated rows
CREATE FUNCTION order_eur_prices_update(order_number text) RETURNS integer AS $$
DECLARE
    exchange_rate CONSTANT numeric(18,5) := 7.5345;
    count_ integer;
	count_total integer := 0;
    amount1_new numeric(18, 2);
	amount2_new numeric(18, 2);
    header_row record;
	item_row record;
	adjustment_row record;
BEGIN
	-- update order header
    count_ := 0;
    FOR header_row IN 
        SELECT remaining_sub_total AS rst_old,
            grand_total AS gt_old
        FROM order_header 
        WHERE order_id = order_number AND currency_uom = 'HRK'
    LOOP
        amount1_new := ROUND(header_row.rst_old/exchange_rate, 2);
		amount2_new := ROUND(header_row.gt_old/exchange_rate, 2);
        UPDATE order_header 
            SET currency_uom = 'EUR', remaining_sub_total = amount1_new, grand_total = amount2_new
            WHERE order_id = order_number;
        IF FOUND THEN
            count_ = count_ + 1;
        END IF;
    END LOOP;
	IF count_ = 0 THEN
		-- no orders to change, exit now
		RETURN 	0;
	END IF;
	count_total = count_total + count_;
	RAISE INFO 'Changed % row(s) in order_header table for order %', count_, order_number;
	
	-- update order items
    count_ := 0;
    FOR item_row IN 
        SELECT unit_price AS up_old,
            unit_list_price AS ulp_old,
			order_item_seq_id AS seq_id
        FROM order_item 
        WHERE order_id = order_number
    LOOP
        amount1_new := ROUND(item_row.up_old/exchange_rate, 2);
		amount2_new := ROUND(item_row.ulp_old/exchange_rate, 2);
        UPDATE order_item
            SET unit_price = amount1_new, unit_list_price = amount2_new
            WHERE order_id = order_number AND order_item_seq_id = item_row.seq_id;
        IF FOUND THEN
            count_ = count_ + 1;
        END IF;
    END LOOP;
	count_total = count_total + count_;
	RAISE INFO 'Changed % row(s) in order_item table for order %', count_, order_number;	
	
	
	-- update order adjustments
    count_ := 0;
    FOR adjustment_row IN 
        SELECT amount AS amount_old,
            amount_already_included AS ari_old,
			order_adjustment_id AS oa_id
        FROM order_adjustment
        WHERE order_id = order_number
    LOOP
        amount1_new := ROUND(adjustment_row.amount_old/exchange_rate, 2);
		amount2_new := ROUND(adjustment_row.ari_old/exchange_rate, 2);
        UPDATE order_adjustment
            SET amount = amount1_new, amount_already_included = amount2_new
            WHERE order_adjustment_id = adjustment_row.oa_id;
        IF FOUND THEN
            count_ = count_ + 1;
        END IF;
    END LOOP;
	count_total = count_total + count_;
	RAISE INFO 'Changed % row(s) in order_adjustment table for order %', count_, order_number;
	RAISE INFO 'Changed % row(s) total', count_total;
    RETURN count_total;
END;
$$ LANGUAGE plpgsql;

delete from party_data_source where date(created_stamp) < date(current_timestamp - '40 days'::interval);
delete from product_search_constraint where date(created_stamp) < date(current_timestamp - '40 days'::interval);
delete from product_search_result where date(created_stamp) < date(current_timestamp - '40 days'::interval);
delete from cart_abandoned_line where date(created_stamp) < date(current_timestamp - '40 days'::interval);
delete from visit where date(created_stamp) < date(current_timestamp - '41 days'::interval);
-- last one only works after all the above have executed
delete from visitor vtr where date(created_stamp) < date(current_timestamp - '42 days'::interval) and not exists (select from visit vt where vt.visitor_id = vtr.visitor_id);

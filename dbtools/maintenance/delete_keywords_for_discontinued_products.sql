with product_ids as (
	select product_id from product where sales_discontinuation_date is not null
)
delete from product_keyword_new 
	where product_id in (select product_id from product_ids) 
	and keyword not in (select product_id from product_ids);
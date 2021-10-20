DELIMITER $$
CREATE PROCEDURE categories_by_price (in min_price int, in max_price int)
BEGIN
select distinct (pct.product_category_name_english)
from
product_category_name_translation pct
join olist_products_dataset op on op.product_category_name = pct.product_category_name
join olist_order_items_dataset oi on oi.product_id = op.product_id
where price between min_price and max_price;
END$$
DELIMITER ;
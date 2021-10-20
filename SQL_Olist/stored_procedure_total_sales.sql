DELIMITER $$
CREATE PROCEDURE total_sales (in startdate date, in enddate date)
BEGIN
select (sum(price) + sum(freight_value)) as total_sales
from
olist_order_items_dataset oi
join olist_orders_dataset o on oi.order_id = o.order_id
where order_purchase_timestamp between startdate and enddate;
END$$
DELIMITER ;
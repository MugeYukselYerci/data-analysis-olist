CREATE TABLE olist_customers_dataset (
    customer_id varchar(32),
    customer_unique_id varchar(32),
    customer_zip_code_prefix int,
    customer_city text,
    customer_state varchar(16)
);

CREATE TABLE olist_geolocation_dataset (
    geolocation_zip_code_prefix int,
    geolocation_lat double,
    geolocation_lng double,
    geolocation_city text,
    geolocation_state varchar(16)
);

CREATE TABLE olist_order_items_dataset (
    order_id varchar(32),
    order_item_id int,
    product_id varchar(32),
    seller_id varchar(32),
    shipping_limit_date datetime,
    price double,
    freight_value double
);

CREATE TABLE olist_order_payments_dataset (
    order_id varchar(32),
    payment_sequential int,
    payment_type varchar(32),
    payment_installments int,
    payment_value double
);

CREATE TABLE olist_order_reviews_dataset (
    review_id varchar(32),
    order_id varchar(32),
    review_score int,
    review_comment_title text,
    review_comment_message text,
    review_creation_date datetime,
    review_answer_timestamp datetime
);

CREATE TABLE olist_orders_dataset (
    order_id varchar(32),
    customer_id varchar(32),
    order_status text,
    order_purchase_timestamp datetime,
    order_approved_at datetime,
    order_delivered_carrier_date datetime,
    order_delivered_customer_date datetime,
    order_estimated_delivery_date datetime
);

CREATE TABLE olist_products_dataset (
    product_id varchar(32),
    product_category_name text,
    product_name_lenght int,
    product_description_lenght int,
    product_photos_qty int,
    product_weight_g double,
    product_length_cm double,
    product_height_cm double,
    product_width_cm double
);

CREATE TABLE olist_sellers_dataset (
    seller_id varchar(32),
    seller_zip_code_prefix int,
    seller_city text,
    seller_state varchar(16)
);

CREATE TABLE product_category_name_translation (
    product_category_name text,
    product_category_name_english text
);
ALTER TABLE product
    ADD PRIMARY KEY (id),
    ADD COLUMN price DOUBLE PRECISION;

ALTER TABLE orders
    ADD PRIMARY KEY (id)
    ADD COLUMN date_created DATE NOT NULL;

ALTER TABLE order_product
    ADD CONSTRAINT fk_order_id
        FOREIGN KEY (order_id)
        REFERENCES orders (id),
    ADD CONSTRAINT fk_product_id
        FOREIGN KEY (product_id)
        REFERENCES product (id),

DROP TABLE IF EXISTS product_info;

DROP TABLE IF EXISTS orders_date;
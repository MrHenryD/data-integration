/* Dimensions */
\c warehouse;

CREATE TABLE user_D (
    id INTEGER,
    age INTEGER,
    gender TEXT,
    country TEXT,
    is_active BOOLEAN,
    registration_ts TIMESTAMP
);

CREATE TABLE product_D (
    id INTEGER,
    product_name TEXT,
    category TEXT
);

CREATE TABLE supplier_D (
    id INTEGER,
    supplier_name TEXT
);

CREATE TABLE campaign_D (
    id INTEGER,
    campaign_name TEXT,
    campaign_category TEXT,
    started_on DATE,
    ended_on DATE
);

/* Facts */
CREATE TABLE sales_F (
    id INTEGER,
    user_id INTEGER,
    product_id INTEGER,
    supplier_id INTEGER,
    campaign_id INTEGER,
    sale_price FLOAT,
    sales_ts TIMESTAMP
);

CREATE TABLE daily_sales_A (
    sales_date DATE,
    unique_users INTEGER,
    total_sales INTEGER
);

CREATE TABLE daily_campaign_conversion_A (
    conversion_date DATE,
    campaign TEXT,
    country TEXT,
    users INT,
    total_purchases INT,
    total_sales FLOAT
);

INSERT INTO user_D (
    id,
    age,
    gender,
    country,
    is_active,
    registration_ts
)
VALUES 
    (1, 18, 'M', 'Canada', FALSE, CURRENT_TIMESTAMP),
    (2, 28, 'M', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (3, 38, 'M', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (4, 48, 'M', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (5, 58, 'M', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (6, 68, 'M', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (7, 19, 'F', 'Canada', FALSE, CURRENT_TIMESTAMP),
    (8, 29, 'F', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (9, 39, 'F', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (10, 49, 'F', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (11, 59, 'F', 'Canada', TRUE, CURRENT_TIMESTAMP),
    (12, 69, 'F', 'Canada', TRUE, CURRENT_TIMESTAMP);

INSERT INTO product_D (
    id,
    product_name,
    category
)
VALUES 
    (1, 'Computer', 'Hardware'),
    (2, 'Laptop', 'Hardware'),
    (3, 'Speakers', 'Accessories'),
    (4, 'Keyboard', 'Accessories');

INSERT INTO supplier_D (
    id,
    supplier_name
)
VALUES 
    (1, 'Bestbuy'),
    (2, 'Futureshop'),
    (3, 'Walmart'); 

INSERT INTO campaign_D (
    id,
    campaign_name,
    campaign_category,
    started_on,
    ended_on
)
VALUES 
    (1, 'Google Campaign', 'Media', CURRENT_TIMESTAMP, NULL),
    (2, 'Facebook Campaign', 'Media', CURRENT_TIMESTAMP, NULL),
    (3, 'Instagram Campaign', 'Media', CURRENT_TIMESTAMP, NULL);

INSERT INTO sales_F (
    id,
    user_id,
    product_id,
    supplier_id,
    campaign_id,
    sale_price,
    sales_ts
)
VALUES 
    (1, 1, 2, 1, 1, 1000.0, CURRENT_TIMESTAMP),
    (2, 1, 1, 1, 1, 1200.0, CURRENT_TIMESTAMP),
    (3, 1, 1, 1, 1, 1300.0, CURRENT_TIMESTAMP),
    (4, 1, 1, 1, 1, 1040.0, CURRENT_TIMESTAMP),
    (5, 1, 1, 1, 1, 1060.0, CURRENT_TIMESTAMP),
    (6, 2, 1, 1, 1, 1600.0, CURRENT_TIMESTAMP),
    (7, 2, 1, 1, 1, 3000.0, CURRENT_TIMESTAMP),
    (8, 2, 1, 1, 1, 2400.0, CURRENT_TIMESTAMP),
    (9, 3, 2, 1, 1, 300.0, CURRENT_TIMESTAMP),
    (10, 3, 4, 1, 1, 1000.0, CURRENT_TIMESTAMP),
    (11, 3, 3, 1, 1, 100.0, CURRENT_TIMESTAMP),
    (12, 3, 1, 1, 1, 1000.0, CURRENT_TIMESTAMP),
    (13, 3, 1, 1, 1, 1090.0, CURRENT_TIMESTAMP),
    (14, 3, 3, 1, 1, 900.0, CURRENT_TIMESTAMP),
    (15, 3, 3, 1, 1, 990.0, CURRENT_TIMESTAMP),
    (16, 3, 3, 1, 1, 560.0, CURRENT_TIMESTAMP),
    (17, 3, 4, 1, 1, 40.0, CURRENT_TIMESTAMP),
    (18, 4, 3, 1, 1, 440.0, CURRENT_TIMESTAMP),
    (19, 4, 3, 1, 1, 640.0, CURRENT_TIMESTAMP),
    (20, 4, 4, 1, 1, 60.0, CURRENT_TIMESTAMP),
    (21, 4, 4, 1, 1, 90.0, CURRENT_TIMESTAMP),
    (22, 7, 3, 1, 1, 120.0, CURRENT_TIMESTAMP),
    (23, 7, 3, 1, 1, 140.0, CURRENT_TIMESTAMP),
    (24, 7, 3, 1, 1, 230.0, CURRENT_TIMESTAMP),
    (25, 8, 3, 1, 1, 400.0, CURRENT_TIMESTAMP),
    (26, 8, 4, 1, 1, 205.0, CURRENT_TIMESTAMP),
    (27, 9, 4, 1, 1, 230.0, CURRENT_TIMESTAMP);
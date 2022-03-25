INSERT INTO users (first_name, last_name, email, password) VALUES
    ('Alex', 'Lloyd', 'alex.lloyd@mail.com', '$2a$10$R2jvtUly7VZhJKU9LiJpnuUKL.1ieEmWQYhuq8PXc3rDQJudY.ALy'),
    ('Eve', 'Tabby', 'eve.tabby@mail.com', '$2a$10$R2jvtUly7VZhJKU9LiJpnuUKL.1ieEmWQYhuq8PXc3rDQJudY.ALy'),
    ('test', 'test', 'test@test.com', '$2a$10$R2jvtUly7VZhJKU9LiJpnuUKL.1ieEmWQYhuq8PXc3rDQJudY.ALy');

INSERT INTO categories (name, image_name) VALUES
    ('Electronics', 'electronics.jpg'),
    ('Household', 'household.jpg'),
    ('Sport', 'sports.jpg'),
    ('Tourism', 'tourism.jpg'),
    ('Hobbies', 'hobbies.jpg'),
    ('Fashion', 'fashion.jpg'),
    ('School and Office', 'office.jpg');

INSERT INTO products (name, image_name, price, category_id) VALUES 
    ('Product_1-1', 'product_1.jpg', '2.33', 1),
    ('Product_1-2', 'product_2.jpg', '2.33', 1),
    ('Product_1-3', 'product_3.jpg', '2.33', 1),
    ('Product_1-4', 'product_4.jpg', '2.33', 1),
    ('Product_1-5', 'product_5.jpg', '2.33', 1),
    ('Product_1-6', 'product_6.jpg', '2.33', 1),
    ('Product_1-7', 'product_7.jpg', '2.33', 1),
    ('Product_1-8', 'product_8.jpg', '2.33', 1),
    ('Product_1-9', 'product_9.jpg', '2.33', 1),

    ('Product_2-1', 'product_1.jpg', '2.33', 2),
    ('Product_2-2', 'product_2.jpg', '2.33', 2),
    ('Product_2-3', 'product_3.jpg', '2.33', 2),
    ('Product_2-4', 'product_4.jpg', '2.33', 2),
    ('Product_2-5', 'product_5.jpg', '2.33', 2),
    ('Product_2-6', 'product_6.jpg', '2.33', 2),
    ('Product_2-7', 'product_7.jpg', '2.33', 2),
    ('Product_2-8', 'product_8.jpg', '2.33', 2),
    ('Product_2-9', 'product_9.jpg', '2.33', 2),

    ('Product_3-1', 'product_1.jpg', '2.33', 3),
    ('Product_3-2', 'product_2.jpg', '2.33', 3),
    ('Product_3-3', 'product_3.jpg', '2.33', 3),
    ('Product_3-4', 'product_4.jpg', '2.33', 3),
    ('Product_3-5', 'product_5.jpg', '2.33', 3),
    ('Product_3-6', 'product_6.jpg', '2.33', 3),
    ('Product_3-7', 'product_7.jpg', '2.33', 3),
    ('Product_3-8', 'product_8.jpg', '2.33', 3),
    ('Product_3-9', 'product_9.jpg', '2.33', 3),

    ('Product_4-1', 'product_1.jpg', '2.33', 4),
    ('Product_4-2', 'product_2.jpg', '2.33', 4),
    ('Product_4-3', 'product_3.jpg', '2.33', 4),
    ('Product_4-4', 'product_4.jpg', '2.33', 4),
    ('Product_4-5', 'product_5.jpg', '2.33', 4),
    ('Product_4-6', 'product_6.jpg', '2.33', 4),
    ('Product_4-7', 'product_7.jpg', '2.33', 4),
    ('Product_4-8', 'product_8.jpg', '2.33', 4),
    ('Product_4-9', 'product_9.jpg', '2.33', 4),

    ('Product_5-1', 'product_1.jpg', '2.33', 5),
    ('Product_5-2', 'product_2.jpg', '2.33', 5),
    ('Product_5-3', 'product_3.jpg', '2.33', 5),
    ('Product_5-4', 'product_4.jpg', '2.33', 5),
    ('Product_5-5', 'product_5.jpg', '2.33', 5),
    ('Product_5-6', 'product_6.jpg', '2.33', 5),
    ('Product_5-7', 'product_7.jpg', '2.33', 5),
    ('Product_5-8', 'product_8.jpg', '2.33', 5),
    ('Product_5-9', 'product_9.jpg', '2.33', 5),
    
    ('Product_6-1', 'product_1.jpg', '2.33', 6),
    ('Product_6-2', 'product_2.jpg', '2.33', 6),
    ('Product_6-3', 'product_3.jpg', '2.33', 6),
    ('Product_6-4', 'product_4.jpg', '2.33', 6),
    ('Product_6-5', 'product_5.jpg', '2.33', 6),
    ('Product_6-6', 'product_6.jpg', '2.33', 6),
    ('Product_6-7', 'product_7.jpg', '2.33', 6),
    ('Product_6-8', 'product_8.jpg', '2.33', 6),
    ('Product_6-9', 'product_9.jpg', '2.33', 6);

INSERT INTO orders (status, user_id) VALUES 
    ('CREATED', 1),
    ('CREATED', 1),
    ('CREATED', 1),
    ('CREATED', 1),
    ('CREATED', 1),
    ('CREATED', 1),

    ('CREATED', 2),
    ('CREATED', 2),
    ('CREATED', 2),

    ('CREATED', 3),
    ('CREATED', 3),
    ('CREATED', 3),
    ('CREATED', 3),
    ('CREATED', 3),
    ('CREATED', 3);

INSERT INTO order_product (order_id, product_id, quantity) VALUES
    (1, 23, 22 ),
    (1, 52, 23 ),
    (1, 24, 25 ),
    (1, 22, 26 ),

    (2, 43, 27 ),
    (2, 54, 28 ),
    (2, 29, 30 ),

    (3, 11, 31 ),

    (4, 2, 32 ),

    (5, 3, 33 ),
    (5, 43, 34 ),

    (6, 27, 35 ),
    (6, 25, 36 ),

    (7, 32, 37 ),
    (7, 25, 38 ),
    (7, 26, 39 ),

    (8, 37, 40 ),

    (9, 39, 41 ),
    (9, 34, 42 ),

    (10, 44, 45 ),

    (11, 32, 46 ),
    (11, 31, 47 ),

    (12, 12, 48 ),
    (12, 27, 49 ),

    (13, 50, 51 ),
    (13, 43, 52 ),
    (13, 23, 53 ),

    (14, 48, 54 ),

    (15, 43, 55 ),
    (15, 17, 56 );

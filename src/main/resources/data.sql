INSERT INTO users (id, first_name, last_name, email, password) VALUES
    (1, 'Alex', 'Lloyd', 'alex.lloyd@mail.com', '$2a$10$R2jvtUly7VZhJKU9LiJpnuUKL.1ieEmWQYhuq8PXc3rDQJudY.ALy'),
    (2, 'Eve', 'Tabby', 'eve.tabby@mail.com', '$2a$10$R2jvtUly7VZhJKU9LiJpnuUKL.1ieEmWQYhuq8PXc3rDQJudY.ALy'),
    (3, 'test', 'test', 'test@test.com', '$2a$10$R2jvtUly7VZhJKU9LiJpnuUKL.1ieEmWQYhuq8PXc3rDQJudY.ALy');

INSERT INTO categories (id, name) VALUES
    (1, 'Electronics'),
    (2, 'Household'),
    (3, 'Sport'),
    (4, 'Tourism'),
    (5, 'Hobbie'),
    (6, 'Fashion'),
    (7, 'School and Office');

INSERT INTO products (id, name, image_name, price, category_id) VALUES 
    (1, 'Product_1-1', 'product_1.jpg', '2.33', 3),
    (2, 'Product_1-2', 'product_2.jpg', '2.33', 1),
    (3, 'Product_1-3', 'product_3.jpg', '2.33', 1),
    (4, 'Product_1-4', 'product_4.jpg', '2.33', 1),
    (5, 'Product_1-5', 'product_5.jpg', '2.33', 1),
    (6, 'Product_1-6', 'product_6.jpg', '2.33', 1),
    (7, 'Product_1-7', 'product_7.jpg', '2.33', 1),
    (8, 'Product_1-8', 'product_8.jpg', '2.33', 1),
    (9, 'Product_1-9', 'product_9.jpg', '2.33', 1),

    (10, 'Product_2-1', 'product_1.jpg', '2.33', 2),
    (11, 'Product_2-2', 'product_2.jpg', '2.33', 2),
    (12, 'Product_2-3', 'product_3.jpg', '2.33', 2),
    (13, 'Product_2-4', 'product_4.jpg', '2.33', 2),
    (14, 'Product_2-5', 'product_5.jpg', '2.33', 2),
    (15, 'Product_2-6', 'product_6.jpg', '2.33', 2),
    (16, 'Product_2-7', 'product_7.jpg', '2.33', 2),
    (17, 'Product_2-8', 'product_8.jpg', '2.33', 2),
    (18, 'Product_2-9', 'product_9.jpg', '2.33', 2),

    (19, 'Product_3-1', 'product_1.jpg', '2.33', 3),
    (20, 'Product_3-2', 'product_2.jpg', '2.33', 3),
    (21, 'Product_3-3', 'product_3.jpg', '2.33', 3),
    (22, 'Product_3-4', 'product_4.jpg', '2.33', 3),
    (23, 'Product_3-5', 'product_5.jpg', '2.33', 3),
    (24, 'Product_3-6', 'product_6.jpg', '2.33', 3),
    (25, 'Product_3-7', 'product_7.jpg', '2.33', 3),
    (26, 'Product_3-8', 'product_8.jpg', '2.33', 3),
    (27, 'Product_3-9', 'product_9.jpg', '2.33', 3),

    (28, 'Product_4-1', 'product_1.jpg', '2.33', 4),
    (29, 'Product_4-2', 'product_2.jpg', '2.33', 4),
    (30, 'Product_4-3', 'product_3.jpg', '2.33', 4),
    (31, 'Product_4-4', 'product_4.jpg', '2.33', 4),
    (32, 'Product_4-5', 'product_5.jpg', '2.33', 4),
    (33, 'Product_4-6', 'product_6.jpg', '2.33', 4),
    (34, 'Product_4-7', 'product_7.jpg', '2.33', 4),
    (35, 'Product_4-8', 'product_8.jpg', '2.33', 4),
    (36, 'Product_4-9', 'product_9.jpg', '2.33', 4),

    (37, 'Product_5-1', 'product_1.jpg', '2.33', 5),
    (38, 'Product_5-2', 'product_2.jpg', '2.33', 5),
    (39, 'Product_5-3', 'product_3.jpg', '2.33', 5),
    (40, 'Product_5-4', 'product_4.jpg', '2.33', 5),
    (41, 'Product_5-5', 'product_5.jpg', '2.33', 5),
    (42, 'Product_5-6', 'product_6.jpg', '2.33', 5),
    (43, 'Product_5-7', 'product_7.jpg', '2.33', 5),
    (44, 'Product_5-8', 'product_8.jpg', '2.33', 5),
    (45, 'Product_5-9', 'product_9.jpg', '2.33', 5),
    
    (46, 'Product_6-1', 'product_1.jpg', '2.33', 6),
    (47, 'Product_6-2', 'product_2.jpg', '2.33', 6),
    (48, 'Product_6-3', 'product_3.jpg', '2.33', 6),
    (49, 'Product_6-4', 'product_4.jpg', '2.33', 6),
    (50, 'Product_6-5', 'product_5.jpg', '2.33', 6),
    (51, 'Product_6-6', 'product_6.jpg', '2.33', 6),
    (52, 'Product_6-7', 'product_7.jpg', '2.33', 6),
    (53, 'Product_6-8', 'product_8.jpg', '2.33', 6),
    (54, 'Product_6-9', 'product_9.jpg', '2.33', 6);

INSERT INTO orders (id, status, user_id) VALUES 
    (1, 1, 1),
    (2, 2, 1),
    (3, 2, 1),
    (4, 6, 1),
    (5, 6, 1),
    (6, 6, 1),

    (7, 1, 2),
    (8, 1, 2),
    (9, 5, 2),

    (10, 1, 3),
    (11, 2, 3),
    (12, 3, 3),
    (13, 4, 3),
    (14, 5, 3),
    (15, 6, 3);

INSERT INTO order_product (id, order_id, product_id, quantity) VALUES
    (1, 1, 23, 22 ),
    (2, 1, 52, 23 ),
    (3, 1, 24, 25 ),
    (4, 1, 22, 26 ),

    (5, 2, 43, 27 ),
    (6, 2, 54, 28 ),
    (7, 2, 29, 30 ),

    (8, 3, 11, 31 ),

    (9, 4, 2, 32 ),

    (10, 5, 3, 33 ),
    (11, 5, 43, 34 ),

    (12, 6, 27, 35 ),
    (13, 6, 25, 36 ),

    (14, 7, 32, 37 ),
    (15, 7, 25, 38 ),
    (16, 7, 26, 39 ),

    (17, 8, 37, 40 ),

    (18, 9, 39, 41 ),
    (19, 9, 34, 42 ),

    (20, 10, 44, 45 ),

    (21, 11, 32, 46 ),
    (22, 11, 31, 47 ),

    (23, 12, 12, 48 ),
    (24, 12, 27, 49 ),

    (25, 13, 50, 51 ),
    (26, 13, 43, 52 ),
    (27, 13, 23, 53 ),

    (28, 14, 48, 54 ),

    (29, 15, 43, 55 ),
    (30, 15, 17, 56 );

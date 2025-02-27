DROP DATABASE IF EXISTS restaurant;
CREATE DATABASE IF NOT EXISTS restaurant;


USE restaurant;

-- Таблица для клиентов

CREATE TABLE IF NOT EXISTS customers (
    id_customer INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    firstname CHAR(255) NOT NULL,
    lastname CHAR(255) NOT NULL,
    phone CHAR(20) NOT NULL
);

-- Таблица для блюд

CREATE TABLE IF NOT EXISTS dish (
    id_dish INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    dish_name CHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT
);

-- Таблица для заказов

CREATE TABLE IF NOT EXISTS orders (
    id_order INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers (id_customer)
);

-- Таблица для связи между заказами и блюдами

CREATE TABLE IF NOT EXISTS order_dishes (
    id_order_dish INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    order_id INT NOT NULL,
    dish_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders (id_order),
    FOREIGN KEY (dish_id) REFERENCES dish (id_dish)
);

-- Таблица для отзывов клиентов

CREATE TABLE IF NOT EXISTS customer_reviews (
    id_review INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    customer_id INT NOT NULL,
    review TEXT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    review_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers (id_customer)
);



INSERT INTO customers (firstname, lastname, phone) VALUES 
('Иван', 'Иванов', '89161234567'),
('Мария', 'Петрова', '89161234568'),
('Сергей', 'Сидоров', '89161234569');


INSERT INTO dish (dish_name, price, description) VALUES 
('Борщ', 150.50, 'Традиционный украинский суп с свеклой и мясом.'),
('Пельмени', 200.00, 'Мясные пельмени с соусом.'),
('Салат Оливье', 120.00, 'Классический салат с курицей и овощами.'),
('Шашлык', 350.00, 'Классический шашлык из маринованного мяса.'),
('Чизкейк', 180.00, 'Вкусный чизкейк с ягодами.');


INSERT INTO orders (customer_id) VALUES 
(1),
(1),
(2);


INSERT INTO order_dishes (order_id, dish_id, quantity) VALUES 
(1, 1, 1),  
(1, 3, 1),  
(2, 2, 2),  
(3, 4, 3);  


INSERT INTO customer_reviews (customer_id, review, rating) VALUES 
(1, 'Отличный ресторан, очень вкусно!', 5),
(2, 'Салат был слишком солёным.', 3),
(1, 'Пельмени замечательные, приду ещё раз.', 5);














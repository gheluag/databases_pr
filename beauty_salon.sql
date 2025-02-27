DROP DATABASE IF EXISTS beauty_salon;
CREATE DATABASE IF NOT EXISTS beauty_salon;

USE beauty_salon;

-- Таблица для клиентов

CREATE TABLE IF NOT EXISTS clients (
    id_client INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    firstname CHAR(255) NOT NULL,
    lastname CHAR(255) NOT NULL,
    phone CHAR(20) NOT NULL
);

-- Таблица для мастеров

CREATE TABLE IF NOT EXISTS masters (
    id_master INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    firstname CHAR(255) NOT NULL,
    lastname CHAR(255) NOT NULL,
    specialty CHAR(100) NOT NULL
);

-- Таблица для услуг

CREATE TABLE IF NOT EXISTS services (
    id_service INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    service_name CHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    duration INT NOT NULL -- продолжительность в минутах
);

-- Таблица для записей на процедуры

CREATE TABLE IF NOT EXISTS appointments (
    id_appointment INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    client_id INT NOT NULL,
    master_id INT NOT NULL,
    service_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients (id_client),
    FOREIGN KEY (master_id) REFERENCES masters (id_master),
    FOREIGN KEY (service_id) REFERENCES services (id_service)
);



INSERT INTO clients (firstname, lastname, phone) VALUES 
('Елена', 'Иванова', '89161234567'),
('Олег', 'Петров', '89161234568'),
('Мария', 'Сидорова', '89161234569'),
('Дмитрий', 'Смирнов', '89161234570'),
('Анна', 'Кузнецова', '89161234571');


INSERT INTO masters (firstname, lastname, specialty) VALUES 
('Александр', 'Смирнов', 'Парикмахер'),
('Татьяна', 'Кузнецова', 'Косметолог'),
('Игорь', 'Петров', 'Массажист'),
('Светлана', 'Иванова', 'Ногтевой сервис');


INSERT INTO services (service_name, price, duration) VALUES 
('Стрижка', 1000.00, 30),
('Маникюр', 800.00, 60),
('Педикюр', 900.00, 90),
('Маска для лица', 1200.00, 45),
('Массаж тела', 2500.00, 60);


INSERT INTO appointments (client_id, master_id, service_id, appointment_date) VALUES 
(1, 1, 1, '2023-10-10 10:00:00'), 
(2, 2, 4, '2023-10-11 11:30:00'), 
(3, 3, 3, '2023-10-12 12:00:00'), 
(4, 4, 2, '2023-10-13 14:00:00'), 
(5, 1, 1, '2023-10-14 15:00:00');
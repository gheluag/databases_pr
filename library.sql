DROP DATABASE IF EXISTS library;
CREATE DATABASE IF NOT EXISTS library;


USE library;

-- Таблица для авторов

CREATE TABLE IF NOT EXISTS authors (
    id_author INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    firstname CHAR(255) NOT NULL,
    lastname CHAR(255) NOT NULL
);

-- Таблица для книг

CREATE TABLE IF NOT EXISTS books (
    id_book INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    title CHAR(255) NOT NULL,
    author_id INT NOT NULL,
    publication_year INT,
    genre CHAR(100),
    FOREIGN KEY (author_id) REFERENCES authors (id_author)
);

-- Таблица для читателей

CREATE TABLE IF NOT EXISTS readers (
    id_reader INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    firstname CHAR(255) NOT NULL,
    lastname CHAR(255) NOT NULL,
    phone CHAR(20) NOT NULL
);

-- Таблица для взятия книг читателями

CREATE TABLE IF NOT EXISTS borrowings (
    id_borrowing INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
    reader_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (reader_id) REFERENCES readers (id_reader),
    FOREIGN KEY (book_id) REFERENCES books (id_book)
);


INSERT INTO authors (firstname, lastname) VALUES 
('Лев', 'Толстой'),
('Фёдор', 'Достоевский'),
('Антон', 'Чехов'),
('Александр', 'Пушкин'),
('Мария', 'Горькая');


INSERT INTO books (title, author_id, publication_year, genre) VALUES 
('Война и мир', 1, 1869, 'Роман'),
('Преступление и наказание', 2, 1866, 'Роман'),
('Чайка', 3, 1896, 'Драма'),
('Евгений Онегин', 4, 1833, 'Роман в стихах'),
('Старик и море', 5, 1952, 'Новелла');


INSERT INTO readers (firstname, lastname, phone) VALUES 
('Иван', 'Иванов', '89161234567'),
('Мария', 'Петрова', '89161234568'),
('Сергей', 'Сидоров', '89161234569'),
('Дмитрий', 'Смирнов', '89161234570'),
('Анастасия', 'Кузнецова', '89161234571');


INSERT INTO borrowings (reader_id, book_id, borrow_date, return_date) VALUES 
(1, 1, '2023-01-10', NULL),  
(2, 2, '2023-02-15', NULL),  
(3, 3, '2023-01-20', '2023-02-01'), 
(1, 4, '2023-01-30', NULL),  
(4, 5, '2023-03-01', '2023-03-10');
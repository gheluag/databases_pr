drop database if exists school;
create database if not exists school;

use school;


create table if not exists students_group(
id_group int primary key auto_increment unique not null,
num_group char(55) not null
);

create table if not exists students(
id_student int primary key auto_increment unique not null,
firstname char(255) not null,
lastname char(255) not null,
stud_group int not null,
foreign key (stud_group) references students_group (id_group) 
);

create table if not exists subjects(
id_subject int primary key auto_increment unique not null,
subject_name char(55) not null
);

create table if not exists teachers(
id_teacher int primary key auto_increment unique not null,
firstname char(255) not null,
lastname char(255) not null
);

create table if not exists teachers_subjects(
id_teacher_sub int primary key auto_increment unique not null,
teacher_id int not null,
subject_id int not null,
foreign key (teacher_id) references teachers (id_teacher),
foreign key (subject_id) references subjects (id_subject)
);

create table if not exists users(
id_user int primary key auto_increment unique not null,
username char(255) not null,
passw char(255) not null
);


INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (1, '337');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (2, '700');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (3, '512');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (4, '995');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (5, '165');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (6, '352');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (7, '328');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (8, '631');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (9, '321');
INSERT INTO `students_group` (`id_group`, `num_group`) VALUES (10, '923');


INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (1, 'Станислав', 'Петров', 5);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (2, 'Дмитрий', 'Сидоров', 9);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (3, 'Анна', 'Кузнецова', 9);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (4, 'Екатерина', 'Лебедева', 2);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (5, 'Александр', 'Иванов', 10);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (6, 'Мария', 'Смирнова', 9);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (7, 'Ольга', 'Волкова', 10);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (8, 'Евгения', 'Фёдорова', 8);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (9, 'Игорь', 'Михайлов', 10);
INSERT INTO students (id_student, firstname, lastname, stud_group) VALUES (10, 'Максим', 'Гордеев', 1);

INSERT INTO subjects (id_subject, subject_name) VALUES (1, 'Базы данных');
INSERT INTO subjects (id_subject, subject_name) VALUES (2, 'Операционные системы');
INSERT INTO subjects (id_subject, subject_name) VALUES (3, 'Алгоритмы и структуры данных');
INSERT INTO subjects (id_subject, subject_name) VALUES (4, 'Программирование');
INSERT INTO subjects (id_subject, subject_name) VALUES (5, 'Информационные системы');
INSERT INTO subjects (id_subject, subject_name) VALUES (6, 'Сетевые технологии');
INSERT INTO subjects (id_subject, subject_name) VALUES (7, 'Веб-разработка');
INSERT INTO subjects (id_subject, subject_name) VALUES (8, 'Кибербезопасность');
INSERT INTO subjects (id_subject, subject_name) VALUES (9, 'Машинное обучение');
INSERT INTO subjects (id_subject, subject_name) VALUES (10, 'Управление проектами в ИТ');

INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (1, 'Сергей', 'Сидоров');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (2, 'Марина', 'Иванова');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (3, 'Александр', 'Петров');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (4, 'Екатерина', 'Кузнецова');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (5, 'Дмитрий', 'Николаев');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (6, 'Анна', 'Фёдорова');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (7, 'Игорь', 'Морозов');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (8, 'Ольга', 'Волкова');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (9, 'Анатолий', 'Сергеев');
INSERT INTO teachers (id_teacher, firstname, lastname) VALUES (10, 'Елена', 'Григорьева');

INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (1, 6, 8);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (2, 1, 5);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (3, 8, 5);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (4, 4, 10);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (5, 2, 8);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (6, 9, 2);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (7, 9, 1);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (8, 3, 6);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (9, 8, 7);
INSERT INTO `teachers_subjects` (`id_teacher_sub`, `teacher_id`, `subject_id`) VALUES (10, 3, 6);

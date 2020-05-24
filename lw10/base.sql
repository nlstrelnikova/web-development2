drop database university;

CREATE DATABASE IF NOT EXISTS university;
USE university;
CREATE TABLE IF NOT EXISTS faculty
    (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    ) DEFAULT CHARACTER SET utf8mb4
    COLLATE `utf8mb4_unicode_ci`
    ENGINE = InnoDB
    ;
INSERT INTO faculty (id, name) VALUES
    (1, 'RTF'),
    (2, 'MMF'),
    (3, 'FST');
CREATE TABLE IF NOT EXISTS `group`
    (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    faculty_id INT NOT NULL,
    PRIMARY KEY (id)
    ) DEFAULT CHARACTER SET utf8mb4
    COLLATE `utf8mb4_unicode_ci`
    ENGINE = InnoDB
    ;
INSERT INTO `group` (id, name, faculty_id) VALUES
    (1, 'RT-11', 1),
    (2, 'RT-12', 1),
    (3, 'RT-13', 1),
    (4, 'MM-11', 2),
    (5, 'MM-12', 2),
    (6, 'MM-13', 2),
    (7, 'SR-11', 3),
    (8, 'SR-12', 3),
    (9, 'SR-13', 3);
CREATE TABLE IF NOT EXISTS student
    (
    id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255) DEFAULT NULL,
    age INT NOT NULL,
    `group_id` INT NOT NULL,
    PRIMARY KEY (id)
    ) DEFAULT CHARACTER SET utf8mb4
    COLLATE `utf8mb4_unicode_ci`
    ENGINE = InnoDB
    ;
INSERT INTO student (id, last_name, name, middle_name, age, `group_id`) VALUES
    (1, 'Васютин', 'Анатолий', 'Иванович', 18, 1),
    (2, 'Чувиков', 'Якуб', 'Дмитриевич', 20, 1),
    (3, 'Иванов', 'Олег', 'Васильевич', 19, 1),
    (4, 'Древнев', 'иван', 'Эдуардович', 18, 1),
    (5, 'Дворников', 'Федов', 'Викторович', 19, 1),
    (6, 'Лагутова', 'Елена', 'Вячеславовна', 29, 2),
    (7, 'Лагутова', 'Лариса', 'Вячеславовна', 19, 2),
    (8, 'Стратов', 'Сергей', 'Петрович', 20, 2),
    (9, 'Лещев', 'Михаил', 'Петрович', 19, 2),
    (10, 'Мухина', 'Анна', 'Сергеевна', 21, 2),
    (11, 'Азарова', 'Ирина', 'Николаевна', 22, 3),
    (12, 'Аспидов', 'Геннадий', 'Олегович', 28, 3),
    (13, 'Смолянинов', 'Андрей', 'Сергеевич', 21, 3),
    (14, 'Должикова', 'Зоя', 'Ивановна', 18, 3),
    (15, 'Смехова', 'Инна', 'Ивановна', 20, 3),
    (16, 'Минеев', 'Андрей', 'Георгиевич', 18, 4),
    (17, 'Гарин', 'Дмитрий', 'Анатольевич', 15, 4),
    (18, 'Санников', 'Петр', 'Игоревич', 20, 4),
    (19, 'Громов', 'Михаил', 'Викторович', 23, 4),
    (20, 'Логинов', 'Максим', 'Ильич', 18, 4),
    (21, 'Васильева', 'Екатерина', 'Эдуардовна', 19, 5),
    (22, 'Норин', 'Константин', 'Павлович', 22, 5),
    (23, 'Кропотов', 'Павел', 'Александрович', 21, 5),
    (24, 'Бабатьев', 'Владимир', 'Владимирович', 18, 5),
    (25, 'Рощин', 'Лев', 'Сергеевич', 19, 5),
    (26, 'Бакрылова', 'Жанна', 'Владимировна', 18, 6),
    (27, 'Воропаева', 'Арина', 'Романовна', 19, 6),
    (28, 'Полевщиков', 'Александр', 'Романович', 19, 6),
    (29, 'Царев', 'Вадим', 'Андреевич', 21, 6),
    (30, 'Дюженкова', 'Виктория', 'Даниловна', 17, 6),
    (31, 'Доронина', 'Елена', 'Павловна', 22, 7),
    (32, 'Кузаев', 'Алексей', 'Юрьевич', 18, 7),
    (33, 'Дворецкова', 'Елизавета', 'Алексеевна', 19, 7),
    (34, 'Пашина', 'Анастасия', 'Ивановна', 20, 7),
    (35, 'Дубровина', 'Елена', 'Сергеевна', 22, 7),
    (36, 'Никонова', 'Галина', 'Николаевна', 20, 8),
    (37, 'Шапиро', 'Оксана', 'Вадимовна', 22, 8),
    (38, 'Фаммус', 'Наталья', 'Александровна', 20, 8),
    (39, 'Агапова', 'Диана', 'Васильевна', 19, 8),
    (40, 'Кононов', 'Иван', 'Григорьевич', 20, 8),
    (41, 'Березкина', 'Наталья', 'Станиславовна', 21, 9),
    (42, 'Яницкий', 'Евгений', 'Юрьевич', 15, 9),
    (43, 'Яшкардин', 'Дмитрий', 'Романович', 21, 9),
    (44, 'Остальцев', 'Юрий', 'Максимович', 21, 9),
    (45, 'Мошкин', 'Антон', 'Дмитриевич', 20, 9);


-- получение всех студентов из конкретной группы.	
SELECT
    id,
    last_name AS "Last name",
    name AS "Name",
    middle_name AS "Middle name",
    age AS "Age"
FROM                                   
    student
WHERE
    age LIKE 19;

-- получение всех студентов из конкретной группы.
SELECT
    student.last_name AS "Last name",
    student.name AS "Name",
    student.middle_name AS "Middle name",
    `group`.name AS "Group"
FROM
    `group`
JOIN 
    student
ON
    student.`group_id` = `group`.id
WHERE
    `group`.name = 'MM-13';

-- получение всех студентов из конкретного факультета
SELECT
    student.last_name AS "Last name",
    student.name AS "Name",
    student.middle_name AS "Middle name",
    faculty.name AS "Faculty"
FROM
    faculty
JOIN 
    `group`
ON
    `group`.faculty_id = faculty.id
JOIN
    student
ON
    student.`group_id` = `group`.id 
WHERE
    faculty.name = 'RTF';


-- получение факультета и группы конкретного студента
SELECT
    student.last_name AS "Last name",
    student.name AS "Name",
    student.middle_name AS "Middle name",
    faculty.name AS "Faculty",
    `group`.name AS "Group"
FROM
    student
JOIN
    `group`
ON
    `group`.id = student.`group_id`
JOIN
    faculty
ON
    faculty.id = `group`.faculty_id
WHERE
    student.last_name = 'Кононов' AND student.name = 'Иван' AND student.middle_name = 'Григорьевич';
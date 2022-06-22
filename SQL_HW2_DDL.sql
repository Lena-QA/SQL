--1. Создать таблицу employees.

create table employees (
id serial primary key,
employee_name varchar (50) not null);

--2. Наполнить таблицу employee 70 строками.

insert into employees (employee_name) 
values ('Sasha'),
('Oleg'),
('Andrey'), 
('Ivan'),
('Kirill'), 
('Katya'),
('Alesya'),
('Natasha'), 
('Irina'), 
('Tanya'), 
('Yuliya'),
('Nastya'),? ??
('Alla'), 
('Alexey'), 
('Sergey'), 
('Sasha_2'),
('Vika'),
('Olya'), 
('Mariya'),
('Kseniya'), 
('Igor'), 
('Vlad'), 
('Sergey_2'),
('Sveta'),
('Tonya'), 
('Oksana'), 
('Yaroslav'), 
('Pavel'), 
('Alisa'),
('Karina'), 
('Kristina'),
('Lera'), 
('Lesha'), 
('Damir'), 
('Ignat'), 
('Semen'), 
('SevA'), 
('Anya'), 
('Vova'), 
('Aleksandr'), 
('Angela'),
('Polina'),
('Misha'), 
('Valera'), 
('Arseniy'), 
('Milana'), 
('Nikita'), 
('Ilya'), 
('Fedor'), 
('Dima'),
('Nadya'),
('Oleg_2'),
('Andrey_2'), 
('Ivan_2'),
('Kirill_2'), 
('KatyA'),
('AlesyA'),
('NatashA'), 
('Irina_2'), 
('Tanya_3'), 
('Yuliya_2'),
('Nastya_2'),
('AllA'), 
('Alexey_1'), 
('Sergey_2'), 
('Sasha_3'),
('Vikaaa'),
('Olya_2'), 
('Mariyaaa'),
('Kseniyaaa');

--3. Создать таблицу salary.

create table salary_1 (
id serial primary key,
monthly_salary int not null);

--4. Наполнить таблицу salary 15 строками.

insert into salary_1 (monthly_salary)
values (1000),
(1100),
(1200),
(1300), 
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500); 

--5. Создать таблицу employee_salary

create table employee_salary_1 (
id serial primary key,
employee_id int not null unique,
salary_id int not null);

--6.Наполнить таблицу employee_salary 40 строками. В 10 строк из 40 вставить несуществующие employee_id.

insert into employee_salary_1 (employee_id, salary_id)
values (3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4), 
(11, 2),
(52, 10),
(15, 13),
(26, 4), 
(16, 1), 
(33, 7), 
(4, 1),
(2, 5), 
(6, 6),
(7, 8),
(8, 11), 
(9, 12), 
(10, 14), 
(13, 15), 
(12, 16),
(14, 1),
(36, 3),
(17, 5), 
(18, 7), 
(19, 9), 
(20, 11), 
(21, 13),
(22, 15),
(24, 2),
(25, 4), 
(71, 6),
(81, 8),
(89, 10),
(77, 12),
(88, 14),
(90, 16),
(73, 1),
(85, 5),
(78, 8),
(82, 11); 

--7.Создать таблицу roles.

create table roles_1 (
id serial primary key,
role_name int not null unique);

8.Поменять тип столба role_name с int на varchar(30).

alter table roles_1 alter column role_name type varchar (30);

9.Наполнить таблицу roles 20 строками.

insert into roles_1 (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

10.Создать таблицу roles_employee.

create table roles_employee (
id serial primary key,
employee_id int not null unique, 
role_id int not null, 
foreign key (employee_id)
references employees (id), 
foreign key (role_id) 
references roles_1 (id)
);

11.Наполнить таблицу roles_employee 40 строками.

insert into roles_employee (employee_id, role_id)
values (7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13), 
(21, 3),
(34, 4),
(6, 7),
(40, 1), 
(52, 5),
(15, 6),
(26, 8), 
(16, 10), 
(33, 11), 
(4, 13),
(2, 14), 
(8, 15), 
(9, 16), 
(13, 17), 
(12, 18),
(14, 19),
(36, 20),
(17, 1), 
(18, 5), 
(19, 6), 
(24, 8),
(25, 10), 
(27, 11), 
(31, 12),
(32, 14),
(55, 15),
(41, 16), 
(60, 17),
(65, 18), 
(63, 19), 
(57, 20), 
(48, 17);

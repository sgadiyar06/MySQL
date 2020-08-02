create database practice;

use	practice;

create table employees(
id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);

insert into employees(first_name,last_name,age,id) values(
'sudarshan','gadiyar',21,101);

select * from employees;

insert into employees(first_name,last_name,age) values(
'sudarshan','gadiyar',22);

select * from employees;
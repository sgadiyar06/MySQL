show databases;
use practice;
create table cats(
cat_id INT NOT NULL auto_increment,
name varchar(20),
breed varchar(50),
age INT,
primary key(cat_id) );

insert into cats(name,breed,age) 
values ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
select * from cats;

select name from cats;
select cat_id from cats;
select breed from cats;

select name, age,breed from cats;

select age,breed,name from cats;

select * from cats where age=4;

select * from cats where name='egg' ;

select * from cats where name='EGG';
/* therefore we can see its case insenstive */ 

select cat_id from cats;

select name,breed from cats; 

select name,age from cats where breed='Tabby';

select * from cats where cat_id = age;
       
select cat_id as ID, name from cats;

select name as 'cat name',breed as 'cat breed' from cats;

desc cats;

update cats set breed='Shorthair' where breed='Tabby';
show warnings;

set sql_safe_update = 0;

select * from cats;

update cats set age=14 where name='Misty';

select * from cats;

update cats set name='Jack' where name = 'Jackson';

select * from cats;

update cats set breed='British Shorthair' where name = 'Ringo';

select * from cats;

update cats set age = 12 where breed = 'Maine Coon' ;

select * from cats;

select * from cats where name='egg';

delete from cats where name='egg';

select * from cats;

select * from cats where age=4;

delete from cats where age=4;

select * from cats;

delete from cats where age=cat_id;

select * from cats;

delete from cats;

select * from cats;

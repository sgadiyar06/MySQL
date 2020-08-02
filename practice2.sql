create table new(
name VARCHAR(20),
age INT);

insert into new values(
'sudarshan',21),
('junior',10),
('abc',3),
('xyz',4),
('pqr',5);

select * from new;

insert into new values(null,null);

select * from new;

set	sql_mode = '';
insert into new values('adfaifnoaidnfoadinfoadinfoiadnfoiadn',14);

select * from new;

insert into new(name) values('name');

select * from new;

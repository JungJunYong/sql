use test;
show tables;

create table test(
no integer primary key,
name varchar(200));
-- Read
select * from test;
-- Create
insert into test values(2,'또치');
-- (U)pdate
update test set name='또치' where no =2;
-- (D)elete
delete from test where no =2;

select * from test;
drop table test;
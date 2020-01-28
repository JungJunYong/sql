-- 1.문제
select *from salaries;

select max(salary) as 최고임금,min(salary) as 최저임금,max(salary)-min(salary)as '최고임금-최저임금' from salaries;

-- 2.문제
select date_format(max(from_date),'%Y년 %m월 %d일') from salaries;

-- 3.문제
select date_format(min(hire_date),'%Y년 %m월 %d일') from employees;

-- 4.문제
select avg(salary) from salaries
where to_date > date_format(now(),'%Y-%m-%d');

-- 5.문제

select max(salary)as 최고연봉,min(salary)as 최저연봉 from salaries
where to_date > date_format(now(),'%Y-%m-%d');

-- 6.문제
select *from employees;
SELECT 
    DATE_FORMAT(NOW(), '%Y-%m-%d') - MAX(birth_date) AS '최고 어린 사원',
    DATE_FORMAT(NOW(), '%Y-%m-%d') - MIN(birth_date) AS '최고 연장자'
FROM
    employees;

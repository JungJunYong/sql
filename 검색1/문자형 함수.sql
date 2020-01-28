-- 문자형 함수
select upper('seoul'), ucase('seoul');
select lower('Seoul'), ucase('SEOUL');

-- 예제 : employees 테이블에서 last_name이 acton인 사원의 이름, 성별, 입사일 출력
select upper(concat(first_name, ' ' , last_name)) as '전체이름',
gender as '성별',
hire_date as '입사일'
from employees
where last_name = 'acton';

select substring('Happy day',3,2);

select upper(concat(first_name, ' ' , last_name)) as '전체이름',
gender as '성별',
hire_date as '입사일'
from employees
where substring(hire_date,1,4) = '1989';

select lpad('hi',5,'?'),lpad('hoe',7,'*');
select rpad('hi',5,'?'),rpad('hoe',7,'*');

-- 예제 :  salaries 테이블에서 2001년 급여가 70000불 이하의 직원만 사번, 급여로 출력하되 급여는 10자리로 부족한 자리수는 *로 표시

SELECT 
    emp_no, LPAD(CAST(salary AS CHAR), 10, '*')
FROM
    salaries
WHERE
    SUBSTRING(from_date, 1, 4) = 2001
        AND salary < 70000;
    
SELECT 
    CONCAT('-----', LTRIM('   hello   '), '-----'),
    CONCAT('-----', RTRIM('   hello   '), '-----'),
    CONCAT('-----', TRIM('    hello  '), '-----');
    
SELECT 
    CONCAT('-----',TRIM(leading 'x' FROM 'xxxxhelloxxxx'),'-----'),
    CONCAT('-----',TRIM(trailing 'x' FROM 'xxxxhelloxxxx'),'-----'),
    CONCAT('-----',TRIM(both 'x' FROM 'xxxxhelloxxxx'),'-----');
    
-- 예제 : salaries 테이블에 대한 LPAD 예제의 결과를 *생략하여 표시

SELECT 
    emp_no,
    TRIM(LEADING '*' FROM LPAD(CAST(salary AS CHAR), 10, '*'))
FROM
    salaries
WHERE
    from_date LIKE '2001-%'
        AND salary < 70000



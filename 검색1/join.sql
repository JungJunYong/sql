-- join

-- 예제1
-- employees 테이블과 titles 테이블을 join하여 직원의 이름과 직책을 모두 출력 하세요.

SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS name, b.title
FROM
    employees a,
    titles b
WHERE
    a.emp_no = b.emp_no;
        
-- employees 테이블과 titles 테이블을 join하여 직원의 이름과 직책을 출력하되 여성엔지니어만 출력하세요.
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS name, b.title
FROM
    employees a,
    titles b
WHERE
    a.emp_no = b.emp_no AND a.gender = 'f'
        AND b.title = 'engineer';
        
-- natural join
-- 두 테이블에 공통 칼럼이 있으면 별다른 조인 조건없이 묵시적으로 조인됨
-- 쓸일이 없음
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS name, b.title
FROM
    employees a
        JOIN
    titles b;
    
-- on a. emp_no = b.emp_no 생략


-- join ~ using
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS name, b.title
FROM
    employees a
        JOIN
    titles b USING (emp_no);
    
    
--  예제 3: 직원의 이름과 직책을 모두 출력 하되 여성 엔지니어만 출력 하세요(join~on)
SELECT 
    CONCAT(a.first_name, ' ', a.last_name) AS name, b.title
FROM
    employees a
        JOIN
    titles b ON a.emp_no = b.emp_no
        JOIN
    salaries c ON b.emp_no = c.emp_no
WHERE
    a.gender = 'f' AND b.title = 'engineer';
    

        
        
-- 실습문제 1:
-- 현재 직원별 근무부서를 사번, 직원전체이름, 근무부서 형태로 출력해 보세요.
select count(*)
from
	employees a
	join
        dept_emp b on a.emp_no = b.emp_no
        join 
	departments c on b.dept_no = c.dept_no
        where b.to_date = '9999-01-01';
        
        
select * from employees;
select * from titles;


--  실습문제 2:  현재 회사에서 지급되고 있는 급여체계를 반영한 결과를 출력하세요.사번,  전체이름, 연봉  이런 형태로 출력하세요.    
SELECT 
    a.emp_no,
    CONCAT(b.first_name, ' ', b.last_name) AS name,
    a.salary
FROM
    salaries a,
    employees b
WHERE
    a.emp_no = b.emp_no
        AND a.to_date = '9999-01-01';




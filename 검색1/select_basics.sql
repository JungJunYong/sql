


SELECT 
    *
FROM
    departments;
-- 예제 : employees 테이블에서 직원의 이름, 성별 ,입사일을 출력
SELECT 
    first_name, last_name, gender, hire_date
FROM
    employees;
    
-- 예제 : employees 테이블에서 직원의 전체이름, 성별 ,입사일을 출력 (별칭부여)
SELECT 
    CONCAT(first_name, ' ', last_name) AS '전체이름',
    gender AS '성별',
    hire_date AS '입사일'
FROM
    employees
ORDER BY 입사일 ASC; 
-- 예제2: titles 테이블에서 직급은 어떤 것들이 있는지 직급이름을 한 번씩만 출력
SELECT DISTINCT
    (title)
FROM
    titles;

SELECT 
    emp_no, salary
FROM
    salaries
WHERE
    from_date LIKE '2001%'
ORDER BY salary DESC;

-- 예제 employees 테이블에서 1991년 이전에 입사한 직원의 이름, 성별, 입사일을 출력

SELECT 
    CONCAT(first_name, ' ', last_name) AS '전체이름',
    gender AS '성별',
    hire_date AS '입사일'
FROM
    employees
WHERE
    hire_date < '1989-01-01'
        AND gender = 'f'
ORDER BY 입사일 ASC; 

-- 예제 : dept_emp 테이블에서 부서 번호가 d005나 d009에 속한 사원의 사번, 부서번호 출력

 SELECT 
    emp_no, dept_no
FROM
    dept_emp
WHERE
    dept_no IN ('d005' , 'd009');
  
  
   SELECT emp_no, dept_no    
   FROM dept_emp
  WHERE dept_no ='d005'
  or dept_no = 'd009';
  

-- 예제 : dept_emp 테이블에서 부서이름에 s가 들어간 부서에 속한 사원의 사번, 부서번호 출력

  SELECT 
    *
FROM
    departments
WHERE
    dept_name LIKE '%s%';
  
  SELECT 
    emp_no, dept_no
FROM
    dept_emp
WHERE
    dept_no IN (SELECT 
            dept_no
        FROM
            departments
        WHERE
            dept_name LIKE '%s%');
  
-- 예제 : employees 테이블에서 1989년에 입사한 직원의 이름, 입사일을 출력  
SELECT 
    CONCAT(first_name, ' ', last_name) AS 이름,
    hire_date AS 입사일
FROM
    employees
WHERE
    hire_date LIKE '1989%';

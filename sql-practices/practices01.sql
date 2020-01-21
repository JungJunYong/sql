-- 1, 사번이 10944인 사원의 이름은(전체 이름)
SELECT 
    concat(first_name, last_name) as'전체이름'
FROM
    employees
WHERE
    emp_no = 10944;
    
-- 2,전체직원의 다음 정보를 조회하세요. 가장 선임부터 출력이 되도록 하세요. 출력은 이름, 성별,  입사일 순서이고 “이름”, “성별”, “입사일로 컬럼 이름을 대체해 보세요.
select concat (first_name,' ',last_name) as '이름',
gender as '성별',
hire_date as'입사일'
from employees
order by 입사일 asc;
-- 3,여직원과 남직원은 각 각 몇 명이나 있나요?
SELECT 
    COUNT(*) as '여직원'
FROM
    employees
WHERE
    gender = 'f';

SELECT 
    COUNT(*) as '남직원'
FROM
    employees
WHERE
    gender = 'm';
        
-- 4,현재 근무하고 있는 직원 수는 몇 명입니까? (salaries 테이블을 사용합니다.) 
select count(*)as'직원수' from salaries
	where to_date >'2020-02-02';
-- 5,부서는 총 몇 개가 있나요?
select count(*)as'부서개수'from departments;

-- 6,현재 부서 매니저는 몇 명이나 있나요?(역임 매너저는 제외)
SELECT 
    COUNT(*)
FROM
    dept_manager
WHERE
    to_date > '2020-02-02';
-- 7,전체 부서를 출력하려고 합니다. 순서는 부서이름이 긴 순서대로 출력해 보세요.
SELECT 
    dept_name
FROM
    departments
ORDER BY CHAR_LENGTH(dept_name) DESC;
-- 8,현재 급여가 120,000이상 받는 사원은 몇 명이나 있습니까?
SELECT 
    COUNT(*) AS '급여 120,000이상'
FROM
    salaries
WHERE
    salary >= 120000
        AND to_date >= '2020-02-02';
-- 9,어떤 직책들이 있나요? 중복 없이 이름이 긴 순서대로 출력해 보세요.
SELECT DISTINCT
    title
FROM
    titles
ORDER BY CHAR_LENGTH(title) DESC;
-- 10,현재 Enginner 직책의 사원은 총 몇 명입니까?
SELECT 
    COUNT(*)
FROM
    titles
WHERE
    title LIKE '%Engineer'
        AND to_date LIKE '9999%';
-- 11,사번이 13250(Zeydy)인 지원이 직책 변경 상황을 시간순으로 출력해보세요.
SELECT 
    title
FROM
    titles
WHERE
    emp_no LIKE '13250'
ORDER BY from_date ASC;

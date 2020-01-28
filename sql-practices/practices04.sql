-- 문제1.현재 평균 연봉보다 많은 월급을 받는 직원은 몇 명이나 있습니까?
select count(*) from salaries
where salary > (select avg(salary) from salaries where to_date ='9999-01-01')
and to_date= '9999-01-01';


-- 문제2. 현재, 각 부서별로 최고의 급여를 받는 사원의 사번, 이름, 부서 연봉을 조회하세요. 단 조회결과는 연봉의 내림차순으로 정렬되어 나타나야 합니다. 
select a.emp_no as 사번,concat(a.first_name,' ',a.last_name)as 이름,b.부서 as 부서 from employees a,(select b.emp_no as 사번,dept_name as 부서  from departments a, dept_emp b, salaries c
where a.dept_no = b.dept_no
and b.emp_no = c.emp_no
and b.to_date = '9999-01-01'
group by a.dept_name
order by c.salary desc)b
where a.emp_no = b.사번;



-- 문제3.현재, 부서 평균 급여보다 연봉(salary)이 많은 사원의 사번, 이름과 연봉을 조회하세요 
select a.emp_no,b.first_name,a.salary from salaries a, employees b,(select avg(a.salary)as avg_sa,a.emp_no as emp_a from salaries a,dept_emp b, departments c
where a.emp_no = b.emp_no
and b.dept_no = c.dept_no
and a.to_date = '9999-01-01'
and b.to_date = '9999-01-01'
group by a.emp_no)c
where a.emp_no = b.emp_no
and b.emp_no = emp_a
and a.salary>avg_sa
group by emp_a;



-- 문제4.현재, 사원들의 사번, 이름, 매니저 이름, 부서 이름으로 출력해 보세요.


select  a.emp_no,b.first_name,name,dpname from dept_emp a , employees b, (select c.first_name as dpname, a.emp_no as empno,a.dept_no as depp,b.dept_name as name from dept_manager a, departments b ,employees c
where a.dept_no = b.dept_no
and a.emp_no = c.emp_no
and a.to_date = '9999-01-01'
group by a.emp_no) c
where a.to_date = '9999-01-01'
and a.emp_no = b.emp_no
and a.dept_no = depp
group by a.emp_no;





-- 문제5.현재, 평균연봉이 가장 높은 부서의 사원들의 사번, 이름, 직책, 연봉을 조회하고 연봉 순으로 출력하세요.

select a.emp_no as 사번,b.first_name as 이름, a.title as 직책, c.salary as 연봉 from titles a, employees b, salaries c, (select d_name,max(avg_salary) from(select avg(c.salary) as avg_salary,a.dept_name as d_name from departments a, dept_emp b , salaries c
where a.dept_no = b.dept_no
and b.emp_no = c.emp_no
group by a.dept_name) a) d 
where a.emp_no = b.emp_no
and b.emp_no = c.emp_no
and a.to_date = '9999-01-01'
and c.to_date = '9999-01-01'
order by 연봉 desc;


-- 문제6.평균 연봉이 가장 높은 부서는? 

select d_name,max(avg_salary) from(select avg(c.salary) as avg_salary,a.dept_name as d_name from departments a, dept_emp b , salaries c
where a.dept_no = b.dept_no
and b.emp_no = c.emp_no
group by a.dept_name) a;

-- 문제7.평균 연봉이 가장 높은 직책?

select title_m,max(avg_salary) from(select avg(b.salary) as avg_salary,a.title as title_m from titles a, salaries b
where a.emp_no = b.emp_no
group by a.title) a;


-- 문제8.현재 매니저보다 높은 연봉을 받고 있는 직원은?부서이름, 사원이름, 연봉, 매니저 이름, 메니저 연봉 순으로 출력합니다.
select a.title as 부서이름,b.first_name as 사원이름,c.salary as 연봉,매니저이름, msalary as 매니저연봉 from titles a, employees b, salaries c, (select a.dept_no as deptno,b.emp_no as bempno,b.salary as msalary,c.first_name as 매니저이름 from dept_manager a, salaries b , employees c
where a.emp_no = b.emp_no
and b.emp_no = c.emp_no
and a.to_date = '9999-01-01'
and b.to_date = '9999-01-01') d
where a.emp_no = b.emp_no
and a.to_date = '9999-01-01'
and c.to_date = '9999-01-01' 
and b.emp_no = c.emp_no
and c.salary > msalary
group by b.emp_no;


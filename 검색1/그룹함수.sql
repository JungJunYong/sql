-- 그룹함수

-- 예제 : salaries 테이블에서 사번이 10060인 직원의 급여 평균과 총합계를 출력

select avg(salary), sum(salary)
from salaries
where emp_no = '10060';

select from_date,salary
from salaries
where emp_no ='10060'
and salary = (select max(salary)
from salaries
where emp_no = 10060);



select from_date,min(salary)
from salaries
where emp_no = '10060';

select from_date, salary from salaries where emp_no =10060;
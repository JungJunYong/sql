-- 날짜형 함수
SELECT CURDATE(),CURRENT_DATE; 
-- CURDATE(),CURRENT_DATE : 오늘 날짜를 YYYY-MM-DD나 YYYYMMDD 형식으로 반환한다. 

SELECT CURTIME(),CURRENT_TIME; 
-- CURTIME() CURRENT_TIME : 현재 시각을 HH:MM:SS나 HHMMSS 형식으로 반환한다.

SELECT NOW(),SYSDATE(),CURRENT_TIMESTAMP; 
-- NOW(),SYSDATE(),CURRENT_TIMESTAMP : 오늘 현시각을 YYYY-MM-DD HH:MM:SS나YYYYMMDDHHMMSS 형식으로 반환한다.
-- NOW는 쿼리문이 실행된 시간 이고 SYSDATE는 쿼리문안에 비교할때마다 현재시간받아옴

SELECT DATE_FORMAT(CURDATE(),'%W %M %Y'),DATE_FORMAT(CURDATE(),'%Y.%m.%d'); 
select now(), date_format(now(), '%y년 %m월 %d일 %h시 %i분 %s초');
-- DATE_FORMAT(date,format) : 입력된 date를 format 형식으로 반환한다.

SELECT concat(first_name, ' ', last_name) AS name,               
       concat(cast(PERIOD_DIFF( DATE_FORMAT(now(), '%Y%m'),  
                    DATE_FORMAT(hire_date, '%Y%m') )as char),'개월')-- 비교하는 두 날짜 데이터형을 맞춰야 한다.
  FROM employees;
--  PERIOD_DIFF(p1,p2) : YYMM이나 YYYYMM으로 표기되는 p1과 p2의 차이 개월을 반환 한다.

select now(), sleep(2), now();
select sysdate(), sleep(2), sysdate();
-- now() vs sysdate()

select concat(first_name,' ' ,last_name) as '전체 이름',
hire_date as '입사일',
date_add(hire_date,interval 6 month) as '최초 근무평가일' -- day, month, year  입력가능
from employees;

select now(),cast(now() as date);

select cast(1-2 as unsigned);

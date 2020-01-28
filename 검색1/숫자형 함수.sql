-- 숫자형 함수

select abs (2), abs(-2); 
-- 절대값

select mod(234,10), 253%10, mod(29,9);  
-- 나머지

select floor(1.23), floor(-1.23); 
-- FLOOR(x) : x보다 크지 않은 가장 큰 정수를 반환한다. BIGINT로자동 변환됨 

select floor(1.23), ceiling(-1.23); 
-- CEILING(x) : x보다 작지 않은 가장 작은 정수를 반환한다. 

SELECT ROUND(-1.23), ROUND(-1.58), ROUND(1.58);  
-- ROUND(x) : x에 가장 근접한 정수를 반환한다. (반올림)

SELECT ROUND(1.298,1),ROUND(1.298,0); 
-- ROUND(x,d) : x값 중에서 소수점 d자리에 가장 근접한 수로 반환한다.(소수점 자리를 지정한 반올림)

SELECT POW(2,2),POWER(2,-2);  
-- POW(x,y) POWER(x,y) : x의 y 제곱 승을 반환한다. 

SELECT SIGN(-32), SIGN(0), SIGN(234); 
-- SIGN(x) : x=음수이면 -1을, x=0이면 0을, x=양수이면 1을 출력한다.

SELECT GREATEST(2,0),GREATEST(4.0,3.0,5.0),GREATEST("B","A","C"); 
-- GREATEST(x,y,...) : 가장 큰 값을 반환한다.

SELECT LEAST(2,0),LEAST(34.0,3.0,5.0),LEAST("b","A","C"); 
-- LEAST(x,y,...) : 가장 작은 값을 반환한다. 



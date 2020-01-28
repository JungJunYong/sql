-- DDL

drop table member;

create table member(
	no integer unsigned not null,
        email varchar(50) not null,
        password varchar(64) not null,
        name varchar(25) not null,
        dept_name varchar(25) not null,
        
        primary key(no)
);

desc member;

-- [예제2]  member 테이블에 juminbunho char 타입, 반드시 입력되어야 하는 칼럼을 추가 하세요.desc member로 추가 결과를  확인해 보세요



-- 새컬럼 추가
alter table member add juminbunho char(13) not null after no;
desc member;

-- [예제3] 예제 2에서 추가했던, juminbunho 칼럼을 삭제 하세요.desc member로 결과를 확인해 보세요

-- 칼럼 삭제
alter table member drop juminbunho;
desc member;

alter table member add join_date DATETIME not null;
desc member;

-- 칼럼 수정
alter table member change no no int unsigned not null auto_increment;
desc member;

alter table member change deparment_name department_name varchar(25) not null;
desc member;

alter table member change name name varchar(10) not null;
desc member;

-- 테이블 이름 변경
alter table member rename user;
desc user;

-- DML
-- 데이터삽입
insert into user values(null, 'jkouese@gmail.com', password('1234'), '홍길동','시스템 개발팀',now());
select * from user;

insert into user(name, email,password, department_name, join_date)
value('홍길동2', 'jkouese@gmail.com',password('1234'),'솔루션 개발팀',now());

update user set join_date = now() where no =1;


update user set join_date = (select now()),name = '홍길동3' where no =1;
select * from user;

delete from user
where no = 2;
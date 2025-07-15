show databases;

show tables;

-- 테이블 생성
create table test1 (
name varchar(20) not null,
age int default 20,
dirthday datetime now(),
job char(6),
gender char(2)	default '여자',
address varchar(10) default '서울'
);






-- 테이블 구조 보기
desc test1; /* tset1 테이블 구조 보기 */

create table busan (
idx int not null auto_increment,
name varchar(20) not null,
age int, primary key(idx)
);

insert into busan (name, age) values ('엔터프라이즈',30);
insert into busan values (default,'뉴저지',25);
insert into busan values (default,'키어사지',18);
insert into busan values (default,'엘드릿지',16);
insert into busan values (default,'센디에고',22);
insert into busan values (default,'폴리머스',32);
insert into busan values (default,'워싱턴',55);
insert into busan values (default,'에식스',21);

select * from busan;

-- 필드 추가(add)
alter table busan add column job char(10);
desc busan;

-- 필드 속성 변경(modify)
alter table busan modify column job char(15);

-- 필드명 변경(change column)
alter table busan change column job work varchar(20);

-- 필드 삭제(drop column)
alter table busan drop column job;

select * from test1;

-- test1 테이블 성별필드(gender(char(2) default '여자') 추가
alter table test1 add column gender char(2) default '여자';
alter table test1 drop column adrdress;

insert into test1 values ('엘리자베스',default,'항모',38,default,default,;
insert into test1 values ('벨파스트',default,'경순',35,'남자','청주');
insert into test1 values ('일러스트리어스',default,'항모',24,default,default);
insert into test1 values ('드레이크','1994-05-20','중순',20,'남자','청주');
insert into test1 values ('뉴저지',default,'순전',25,default,default);
insert into test1 values ('키어사지',default,'항전',18,default,default);
insert into test1 values ('엘드릿지',default,'경순',16,default,default);
insert into test1 values ('샌디에고',default,'경순',22,default,default);
insert into test1 values ('폴리머스',default,'중순',32,default,default);
insert into test1 values ('워싱턴',default,'전함',55,default,default);
insert into test1 values ('에식스',default,'항모',21,default,default);

select * from test1 where name = '홍길동';
select * from test1 where gender = '남자';
select * from test1 where age < 22;
select * from test1 where age >= 22 and age < 40;
select * from test1 where job = '항모' or job = '경순';
select * from test1 where gender = '여자' and address = '서울';
select * from test1 where address = '청주';
select * from test1 where name like '벨%';
select * from test1 where age >= 30 and age <= 39;
select * from test1 where age between 20 and 39 and gender = '여자';
select distinct * from test1 where name like '벨%';
select distinct * from test1 where name like '엘%';
select distinct * from test1 where name like '%트';

select * from test1;

-- update 테이블 set 필드면 = '변경할 값' where 조건식;
update test1 set address = '미국' where name = '벨파스트';
select * from test1 where age between 20 and 29 and address = '서울';
update test1 set gender = '남자' where age between 20 and 29 and address = '서울';
select * from test1 where age between 20 and 29 and address = '서울';
update test1 set age = age + 5 where age between 20 and 29 and address = '서울';
select * from test1 where age between 20 and 29 and address = '서울';
select * from test1 where job = '경순';
delete from test1 where name = '벨파스트';
delete from test1 where name = '엘리자베스';
delete from test1 where name = '드레이크';
delete from test1 where name = '일러스트리어스';
delete from test1 where address = '서울';

insert into test1 values ('폴리머스',default,'중순',32,default,default);
update test1 set birthday = '1995-08-07' where name = '폴리머스';
insert into test1 values ('엔터프라이즈','1778-12-05','항모',24,default,'미국');
insert into test1 values ('에식스','1788-10-15','항모',14,default,'미국');
select * from test1 where job = '항모';

rename table test1 to test2;
select * from test1;

show tables;
rename table test2 to test1;
select * from test1;
-- 성명 오름차순 정렬
select * from test1 order by name;
select * from test1 order by name;
-- 나이 내림차순 정렬
select * from test1 order by age desc;
select * from test1 order by age;
select * from test1 order by gender;
select * from test1 order by gender, age desc;
select * from test1 order by gender, age desc;
select * from test1 where address = '항모' limit 1;

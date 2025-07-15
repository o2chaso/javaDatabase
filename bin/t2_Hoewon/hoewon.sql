show tables;

create table hoewon(
	idx	int not null auto_increment primary key, -- 회원 고유번호
	name varchar(20) not null,
	age int default 20,
	gender char(2) default '여자',
	address varchar(30)
);

desc hoewon;

insert into hoewon values(default,'홍길동',25,'남자','서울');
insert into hoewon values(default,'레이첼',22,default,'영국');
insert into hoewon values(default,'고길동',95,'남자','서울');
insert into hoewon values(default,'이몽룡',80,'남자','서울');
insert into hoewon values(default,'성춘향',78,default,'청주');
insert into hoewon values(default,'정유니',4,default,'증평');
insert into hoewon values(default,'호시마치 스이세이',26,default,'일본');
insert into hoewon values(default,'손흥민',32,'남자','서울');
insert into hoewon values(default,'우고 산체스',55,'남자','맥시코');

desc hoewon;

select * from hoewon;

select * from hoewon where name = '호시마치 스이세이';

delete from hoewon;
drop table hoewon;


/* 새로운 database 생성 */
create database shirts_db;

/* 해당 DB 사용 */
use shirts_db;

/* 조건에 맞는 테이블 생성 */
create table shirts (
	shirt_id int auto_increment key,
    article varchar(50),
    color varchar(50),
    shirt_size varchar(5),
    last_worn int
);

/* 테이블 정보 확인 */
desc shirts;

/* 테이블에 다중 데이터 삽입 */
insert into shirts(article, color, shirt_size, last_worn)
values ('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15);

/* 추가 데이터 삽입 */    
insert into shirts(article, color, shirt_size, last_worn) 
values ('polo shirt','purple', 'M', 50);

/* 모든 데이터 확인 */
select * from shirts;

/* article, color 데이터 확인 */
select article, color from shirts;

/* 셔츠 사이즈가 M인 행의 모든 데이터 불러오기 */
select * from shirts where shirt_size='M';

/* 셔츠 사이즈가 M인 행의 article, color, shirt_size, last_worn 데이터 불러오기*/
select article, color, shirt_size, last_worn from shirts where shirt_size='M';

/* article이 polo shirt인 행에서 shirt_size를 L로 수정 */
update shirts set shirt_size='L' where article='polo shirt';

/* last_worn이 15인 행에서 last_worn를 0으로 수정 */
update shirts set last_worn=0 where last_worn=15;

/* color가 white인 행에서 color와 shirt_size를 각각 off white와 X5로 수정 */
update shirts set color='off white', shirt_size='X5' where color='white';

/* 수정 결과 확인 */
select * from shirts;

/* last_worn가 200인 행의 모든 데이터 불러오기 */
select * from shirts where last_worn=200;

/* last_worn가 200인 행 삭제 */
delete from shirts where last_worn=200;

/* article이 tank top인 행의 모든 데이터 불러오기*/
select * from shirts where article='tank top';

/* article이 tank top인 행 삭제 */
delete from shirts where article='tank top';

/* shirts 모든 데이터 불러오기 */
select * from shirts;

/* shirts에 있는 모든 데이터 삭제 */
delete from shirts;

/* shirts 테이블 삭제 */
drop table shirts;

/* shirts 테이블 정보 확인(에러) */
desc shirts;

/* 에러사유: 존재하지 않는 테이블 */
show warnings;
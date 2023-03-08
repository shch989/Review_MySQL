/* cats 테이블 삭제 */
drop table cats;

/* cats 테이블 생성 */
create table cats
	(
		cat_id int not null auto_increment,
    name varchar(100),
    breed varchar(100),
    age int,
    primary key(cat_id)
	);

/* cats 테이블 정보 확인 */
desc cats;

/* cat 데이터 추가 */
insert into cats(name, breed, age) 
values ('Ringo', 'Tabby', 4),
	('Cindy', 'Maine Coon', 10),
    ('Dumbledore', 'Maine Coon', 11),
    ('Egg', 'Persian', 4),
    ('Misty', 'Tabby', 13),
    ('George Michael', 'Ragdoll', 9),
    ('Jackson', 'Sphynx', 7);

/* cats 테이블의 모든 데이터 읽기 */
select * from cats;

/* cats 테이블의 name 데이터 읽기 */
select name from cats;

/* cats 테이블의 age 데이터 읽기 */
select age from cats;

/* cats 테이블의 cat_id 데이터 읽기 */
select cat_id from cats;

/* cats 테이블의 name과 breed 데이터 읽기 */
select name, breed from cats;

/* age가 4인 행의 모든 데이터를 읽기 */
select * from cats where age=4;

/* name이 Egg인 행의 모든 데이터를 읽기 */
select * from cats where name='Egg';

/* 도전과제: select 문제 */
/* cats 테이블에서 cat_id 데이터 읽기 */
select cat_id from cats;

/* cats 테이블에서 name, breed 데이터 읽기 */
select name, breed from cats;

/* cats 테이블에서 breed의 데이터가 Tabby인 행의 name, age 데이터 읽기 */
select name, age from cats where breed='Tabby';

/* cats 테이블에서 cat_id의 데이터가 age와 같은 행의 cat_id, age 데이터 읽기 */
select cat_id, age from cats where cat_id=age;

/* cats 테이블에서 cat_id의 데이터가 age와 같은 행의 모든 데이터 읽기 */
select * from cats where cat_id=age;

/* cats 테이블에서 cat_id와 name의 데이터를 읽는데 cat_id를 id로 변경하여 불러온다 */
select cat_id as id, name from cats;

/* cats 테이블에서 breed가 Tabby인 행의 breed를 Shorthair로 수정한다 */
update cats set breed='Shorthair' where breed='Tabby';

/* cats 테이블에서 name이 Misty인 행의 age를 14로 수정한다 */
update cats set age=14 where name='Misty';

/* cats 테이블 모든 데이터 확인 */
select * from cats;

/* 도전과제: update 문제 */
/* name이 Jackson인 행의 모든 데이터를 불러온다 */
select * from cats where name='Jackson';

/* name이 Jackson인 행의 name을 Jack로 수정한다 */ 
update cats set name='Jack' where name='Jackson';

/* name이 Jackson인 행의 모든 데이터를 불러온다 */
select * from cats where name='Jackson';

/* name이 Jack인 행의 모든 데이터를 불러온다 */ 
SELECT * FROM cats WHERE name='Jack';

/* name이 Ringo인 행의 모든 데이터를 불러온다 */ 
SELECT * FROM cats WHERE name='Ringo';

/* name이 Ringo인 행의 breed를 British Shorthair로 수정한다 */ 
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo';
 
/* name이 Ringo인 행의 모든 데이터를 불러온다 */  
SELECT * FROM cats WHERE name='Ringo';

/* name이 Egg인 행을 모두 삭제 */
delete from cats where name='Egg';

/* 모든 cats 테이블의 행을 삭제 */
delete from cats;

/* 도전과제: delete 문제 */
/* cat_id와 age의 데이터가 같은 행을 삭제 */
delete from cats where cat_id=app;

/* 모든 cats 테이블의 행을 삭제 */
delete from cats;
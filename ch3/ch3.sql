/* cats 테이블 생성(최대 50의 문자길이를 가지는 name, 숫자형 age) */
create table cats(name varchar(50), age int);

/* name 'Jetson' age 7 값을 cats 테이블에 삽입 */
insert into cats(name, age) values('Jetson', 7);

/* name 'semi' age 3 값을 cats 테이블에 삽입 */
insert into cats(name, age) values('Semi', 3);

/* cats 테이블의 모든 행 보기 */
select * from cats;

/* 다중 cat 데이터 삽입 */
insert into cats(name, age) values('Peanut', 2), ('Butter', 4), ('Jelly', 7);

/* 도전과제: people 테이블 생성 후 아래의 내용 작성
	first_name - 20char limit, 
	last_name - 20char limit, 
    age - int */
create table people(first_name varchar(20), last_name varchar(20), age int);

/* people 테이블 생성 확인 */
show columns from people;

/* 첫번째 데이터: Tina, Belcher, 13을 people 테이블에 삽입 */
insert into people(first_name, last_name, age) values('Tina', 'Belcher', 13);

/* 두번째 데이터: Bob, Belcher, 42을 people 테이블에 삽입 */
insert into people(first_name, last_name, age) values('Bob', 'Belcher', 42);

/* 다중 데이터 삽입 */
insert into people(first_name, last_name, age) values('Linda', 'Belcher', 45), ('Phillip', 'Frond', 38), ('Calvin', 'Fischoeder', 70);

/* people 테이블의 모든 행 보기 */
select * from people;

/* people 테이블 제거 */
drop table people;

/* 삭제되었는지 확인 */
show tables;

/* cats 테이블에 이름만 삽입 */
insert into cats(name) value('Alabama');

/* cats 테이블에 아무 데이터도 넣지 않을 경우 */
insert into cats() value();

/* cats 테이블의 모든 행 보기 */
select * from cats;

/* name과 age의 데이터가 null이 될수 없는 cats2 테이블 생성 */
create table cats2(name varchar(100) not null, age int not null);

/* 생성되었는지 확인 */
show tables;

/* cats2 테이플 정보 확인 */
desc cats2;

/* name 데이터만 삽입할 경우(에러) */
insert into cats2(name) values('Texas');

/* 에러 확인 */
show warnings;

/* cats2 테이블의 모든 행 보기 */
select * from cats2;

/* 기본 값이 있는 cats3 테이블 생성 */
create table cats3(name varchar(100) default 'unnamed', age int default 99);

/* 생성되었는지 확인 */
show tables;

/* cats3 테이플 정보 확인 */
desc cats3;

/* age 데이터만 삽입할 경우 */
insert into cats3(age) values(13);

/* 모든 데이터를 삽입하지 않을 경우 */
insert into cats3() values();

/* age에 null 값으로 삽입할 경우 */
insert into cats3(name, age) values('Montana', null);

/* cats3 테이블의 모든 행 보기 */
select * from cats3;

/* NOT_NULL과 DEFAULT를 결합하여 cats4 테이블 생성 */
create table cats4
	(
		name varchar(100) not null default 'unnamed',
        age int not null default 99
    );

/* 생성되었는지 확인 */
show tables;

/* 모든 데이터를 삽입하지 않을 경우 */
insert into cats4() values();

/* age에 null 값으로 삽입할 경우(에러) */
insert into cats4(name, age) values('Cali', null);

/* 에러 확인 */
show warnings;

/* cats4 테이플 정보 확인 */
desc cats4;

/* cats4 테이블의 모든 행 보기 */
select * from cats4;

/* 기본 key를 가지는 cats 테이블 생성 */
create table unique_cats
	(
		cat_id int not null,
        name varchar(100),
        age int,
        primary key(cat_id)
	);

/* 생성되었는지 확인 */
show tables;

/* unique_cats 테이플 정보 확인 */
desc unique_cats;

/* key값과 name, age 입력 */
insert into unique_cats(cat_id, name, age) values(1, 'Fred', 1);

/* 또 다른 key값과 name, age 입력 */
insert into unique_cats(cat_id, name, age) values(2, 'Louise', 3);

/* 중복된 key값을 가진 데이터를 입력할 경우(에러) */
insert into unique_cats(cat_id, name, age) values(1, 'James', 3);

/* 에러 확인 */
show warnings;

/* unique_cats 테이블의 모든 행 보기 */
select * from unique_cats;

/* 자동증가 key(AUTO_INCREMENT)를 가지는 cats 테이블 생성 */
create table unique_cats2
	(
		cat_id int not null auto_increment,
        name varchar(100),
        age int,
        primary key(cat_id)
	);

/* 생성되었는지 확인 */
show tables;

/* unique_cats 테이플 정보 확인 */
desc unique_cats2;

/* key값을 제외한 name, age 입력 */
insert into unique_cats2(name, age) values('Skippy', 4);

/* 또다른 key값을 제외한 name, age 입력 */
insert into unique_cats2(name, age) values('Jiff', 3);

/* unique_cats2 테이블의 모든 행 보기 */
select * from unique_cats2;

/* 예제: 테이블 제약조건 
id: number(automatically increments) mandatory, primary key
last_name: text, mandatory
first_name: text, mandatory
middle_name: text, not mandatory
age: number, mandatory
current_status: text, mandatory, defaults to 'employed'
*/

/* 조건에 따른 테이블 생성 */
CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);

/* 또 다른 방법 */
CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);

/* 테이블 테스트 */
INSERT INTO employees(first_name, last_name, age) VALUES('Dora', 'Smith', 58);
